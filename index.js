import { writeFileSync, mkdirSync, readdirSync } from 'node:fs';
import { extname, join } from 'node:path';
import XLSX from 'xlsx';
import { columns } from './consts.js';

const CONFIG = {
    inputDir: './input',
    outputDir: './result',
    chunkSize: 50000,
    dumpSize: 65,
    separator: ';',
    columnsToCheckDuplicates: ['NAAB Code', 'InterRegNumber', 'Name'],
    uniqueIndexColumns: ['name', 'naab_code', 'inter_reg_number', 'inventory_number'],
};

class DataProcessor {
    static formatDate(value) {
        try {
            const [month, day, year] = value.replace(/'/g, '').split('/');
            return `'${[year, month.padStart(2, '0'), day.padStart(2, '0')].join('-')}'`;
        } catch (error) {
            console.error(`Error formatting date: ${value}`, error);
            return 'NULL';
        }
    }

    static getColumnIndexes(head, columns) {
        return Object.fromEntries(
            columns.map(({ name, columnNameInTable, ruColumnNameInTable }) => {
                const index = head.findIndex((h) => h === columnNameInTable || h === ruColumnNameInTable);
                return [name, index !== -1 ? index : undefined];
            }),
        );
    }

    static removeDuplicates(rows, head, duplicatesCounter, columnsToCheck, separator) {
        const columnIndexes = columnsToCheck.map((col) => head.findIndex((h) => h === col));
        const rowIndexesToExclude = new Set();

        rows.forEach((row, index) => {
            const values = row.split(separator);
            const key = columnIndexes.map((i) => values[i]).join('-');

            if (duplicatesCounter[key]) {
                rowIndexesToExclude.add(index);
                duplicatesCounter[key]++;
            } else {
                duplicatesCounter[key] = 1;
            }
        });

        return rows.filter((_, index) => !rowIndexesToExclude.has(index));
    }

    static generateSQL(tableName, columns, rows, head, separator) {
        const columnsToInsert = columns.filter((col) => col.name !== 'id');
        const colNamesString = columnsToInsert.map((col) => `\`${col.name}\``).join(',');
        const columnIndexes = this.getColumnIndexes(head, columns);
        const duplicatesCounter = new Set();
        const checkIndexes = CONFIG.columnsToCheckDuplicates.map((col) => head.findIndex((h) => h === col));

        const sqlRows = rows
            .map((row) => {
                const values = row.split(separator).map((val) => `'${val.replace('\r', '')}'`);
                const key = checkIndexes.map((i) => values[i]).join('-');

                if (duplicatesCounter.has(key)) return null;
                duplicatesCounter.add(key);

                return `(${columnsToInsert
                    .map(({ name }) => {
                        if (columnIndexes[name] === undefined) return 'NULL';
                        const value = values[columnIndexes[name]];
                        return name === 'birth_date' && value !== "''"
                            ? this.formatDate(value)
                            : value === "''"
                            ? 'NULL'
                            : value;
                    })
                    .join(',')})`;
            })
            .filter((row) => row !== null);

        return { sqlRows, colNamesString };
    }

    static createTableSQL(tableName, columns) {
        const colDefs = columns.map((col) => `\`${col.name}\` ${col.type}`).join(',\n');
        const uniqueIndex = `CREATE UNIQUE INDEX idx_bulls_unique ON \`${tableName}\`(${CONFIG.uniqueIndexColumns.join(
            ', ',
        )});`;

        return `SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE \`${tableName}\` (
${colDefs}
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

${uniqueIndex}
`;
    }

    static async processFiles(tableName, columns, shouldCreateTable) {
        mkdirSync(CONFIG.outputDir, { recursive: true });
        const files = readdirSync(CONFIG.inputDir).filter((file) => extname(file).toLowerCase() === '.xlsx');

        if (!files.length) {
            console.log('No XLSX files found in input directory');
            return;
        }

        const duplicatesStorage = {};
        let isTableCreated = !shouldCreateTable;

        for (const file of files) {
            const filePath = join(CONFIG.inputDir, file);
            const fileName = file.replace('.xlsx', '');
            const workbook = XLSX.readFile(filePath);
            const sheetName = workbook.SheetNames[0];
            const worksheet = workbook.Sheets[sheetName];
            const csvData = XLSX.utils.sheet_to_csv(worksheet, { FS: CONFIG.separator }).replace(/'/g, '"');

            const [head, ...rows] = csvData.split('\n').map((row) => row.replace('\r', ''));
            const uniqueRows = this.removeDuplicates(
                rows,
                head.split(CONFIG.separator),
                duplicatesStorage,
                ['NAAB Код', 'InterRegNumber'],
                CONFIG.separator,
            );
            const { sqlRows, colNamesString } = this.generateSQL(
                tableName,
                columns,
                uniqueRows,
                head.split(CONFIG.separator),
                CONFIG.separator,
            );

            const chunks = Array(Math.ceil(sqlRows.length / CONFIG.chunkSize))
                .fill()
                .map((_, i) => sqlRows.slice(i * CONFIG.chunkSize, (i + 1) * CONFIG.chunkSize));

            chunks.forEach((chunk, chunkIndex) => {
                let sqlContent = isTableCreated ? '' : this.createTableSQL(tableName, columns);
                isTableCreated = true;

                for (let i = 0; i < chunk.length; i += CONFIG.dumpSize) {
                    const block = chunk.slice(i, Math.min(i + CONFIG.dumpSize, chunk.length)).join(',\n');
                    sqlContent += `INSERT INTO \`${tableName}\` (${colNamesString}) VALUES\n${block};\n`;
                }

                const outputFile = join(CONFIG.outputDir, `${fileName}_${chunkIndex + 1}.sql`);
                writeFileSync(outputFile, sqlContent);
                console.log(`Generated file: ${outputFile}`);
            });
        }

        const duplicatesOutput = Object.entries(duplicatesStorage)
            .filter(([_, count]) => count > 1)
            .map(([key, count]) => `${key} - ${count}`)
            .join('\n');

        writeFileSync(join(CONFIG.outputDir, 'duplicates.txt'), duplicatesOutput);
    }
}

async function main() {
    await DataProcessor.processFiles('AltaGenAugust2025', columns, true);
}

main().catch(console.error);
