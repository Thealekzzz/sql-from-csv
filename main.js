import path from 'path';
import { writeFileSync } from 'fs';
import { fileURLToPath } from 'url';

import { columns } from './consts.js';
import { main as join } from './join/main.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const CONFIG = {
    chunkSize: 50000,
    dumpSize: 65,
    separator: ';',
    tableName: 'AltaGenDecember2025',
    uniqueIndexColumns: ['name', 'naab_code', 'inter_reg_number', 'inventory_number'],
};

async function main() {
    const { headers, rows } = await join();

    function createTableSQL(tableName, columns) {
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
    
    CREATE INDEX idx_inter_reg_number ON AltaGenDecember2025 (inter_reg_number);
    CREATE INDEX idx_naab_code ON AltaGenDecember2025 (naab_code);
    ${uniqueIndex}

    `;
    }

    const columnNamesString = columns
        .slice(1)
        .map((col) => `\`${col.name}\``)
        .join(',');

    const chunks = Array(Math.ceil(rows.length / CONFIG.chunkSize))
        .fill()
        .map((_, i) => rows.slice(i * CONFIG.chunkSize, (i + 1) * CONFIG.chunkSize));

    chunks.forEach((chunk, chunkIndex) => {
        let sqlContent = chunkIndex === 0 ? createTableSQL(CONFIG.tableName, columns) : '';

        for (let i = 0; i < chunk.length; i += CONFIG.dumpSize) {
            const block = chunk
                .slice(i, Math.min(i + CONFIG.dumpSize, chunk.length))
                .map((row) => `(${row})`)
                .join(',\n')
                .replace(/\w('\w)/g, (match, group1) => {
                    return match.replace("'", '"'); // Заменяем одинарную кавычку на двойную
                })
                .replace('\r', '');
            sqlContent += `INSERT INTO \`${CONFIG.tableName}\` (${columnNamesString}) VALUES\n${block};\n`;
        }

        const outputFile = path.join(__dirname, 'output', `data_${chunkIndex + 1}.sql`);

        if (chunkIndex === chunks.length - 1) {
            sqlContent += `
UPDATE ${CONFIG.tableName}
SET inter_reg_number_trimmed = REGEXP_SUBSTR(inter_reg_number, '[1-9][0-9]+$');

UPDATE ${CONFIG.tableName}
SET naab_code_trimmed = REGEXP_SUBSTR(naab_code, '[1-9][0-9]+$');`
        }

        writeFileSync(outputFile, sqlContent, 'utf8');
        console.log(`Generated file: ${outputFile}`);
    });
}

main();
