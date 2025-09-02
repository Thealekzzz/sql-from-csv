import { readFileSync, writeFileSync, mkdirSync, readdirSync } from "fs";
import { columns } from "./consts.js";
import { extname, join } from "path";

String.prototype.replaceAll = function (from, to) {
    return this.split(from).join(to);
};

function createTableAndFillFromCSV(
    tableName,
    columns,
    sep = ";",
    dumpSize = 65
) {
    const chunkSize = 50000;

    // Папки ввода и вывода
    const inputDir = "./input";
    const outputDir = "./result";

    // Создаем папку result, если она не существует
    mkdirSync(outputDir, { recursive: true });

    // Получаем список всех xlsx файлов в папке input
    const files = readdirSync(inputDir);
    const csvFiles = files.filter(
        (file) => extname(file).toLowerCase() === ".csv"
    );

    if (csvFiles.length === 0) {
        console.log("В папке input не найдено xlsx файлов");
        return;
    }

    let isCreatingTableCodeAdded = false;

    for (const file of csvFiles) {
        const filePath = join(inputDir, file);
        const fileName = file.replace(".csv", "");

        // Read CSV data
        const text = readFileSync(filePath).toString();

        const data = text.split("\n");
        const head = data[0].replace("\r", "").split(sep);

        const rows = data.slice(1);

        const duplicatesCounter = {};
        const columnsToCheckDuplicates = [
            "NAAB Code",
            "InterRegNumber",
            "Name",
        ];
        const columnNumbersToCheck = columnsToCheckDuplicates.map(
            (columnName) =>
                head.findIndex((headName) => headName === columnName)
        );

        const columnIndexesByDBColumnName = Object.fromEntries(
            columns.map(
                ({
                    name: BDColumnName,
                    columnNameInTable,
                    ruColumnNameInTable,
                }) => {
                    let columnIndex = head.findIndex(
                        (headName) => headName === columnNameInTable
                    );

                    if (columnIndex === -1) {
                        columnIndex = head.findIndex(
                            (headName) => headName === ruColumnNameInTable
                        );
                    }

                    return [
                        BDColumnName,
                        columnIndex !== -1 ? columnIndex : undefined,
                    ];
                }
            )
        );

        // Make columns description
        const colNamesStringExtended = columns
            .map((column) => `\`${column.name}\` ${column.type}`)
            .join(",\n");

        const columnsToInsertData = columns.filter(
            ({ name: BDColumnName }) => BDColumnName !== "id"
        );
        const colNamesString = columnsToInsertData
            .map((column) => `\`${column.name}\``)
            .join(",");

        // Make rows data
        const lines = rows
            .map((line) => {
                const chars = line
                    .split(sep)
                    .map(
                        (char) =>
                            `'${char.replace("\r", "").replaceAll("\r", "")}'`
                    );

                const key = columnNumbersToCheck
                    .map((number) => chars[number])
                    .join("-");
                if (duplicatesCounter[key]) {
                    return null;
                }

                duplicatesCounter[key] = 1;

                return columnsToInsertData
                    .map(({ name: BDColumnName }) => {
                        if (
                            columnIndexesByDBColumnName[BDColumnName] !==
                            undefined
                        ) {
                            const value =
                                chars[
                                    columnIndexesByDBColumnName[BDColumnName]
                                ];

                            if (
                                BDColumnName === "birth_date" &&
                                value &&
                                value !== `''`
                            ) {
                                try {
                                    const [m, d, y] = value
                                        .replace(/'/g, "")
                                        .split("/");
                                    return (
                                        "'" +
                                        [
                                            y,
                                            m.padStart(2, "0"),
                                            d.padStart(2, "0"),
                                        ].join("-") +
                                        "'"
                                    );
                                } catch (err) {
                                    console.log(value);
                                    console.log(err);
                                }
                            }

                            if (value === "''") {
                                return "NULL";
                            }

                            return value;
                        }

                        return "NULL";
                    })
                    .join(",");
            })
            .filter((line) => line !== null)
            .map((line) => `(${line})`);

        // Separate lines on chunks to create low-sized files
        const numberOfLines = lines.length;
        const chunks = Array(Math.ceil(numberOfLines / chunkSize))
            .fill()
            .map((_, index) =>
                lines.slice(index * chunkSize, (index + 1) * chunkSize)
            );

        // console.log(lines);

        for (let chunkIndex = 0; chunkIndex < chunks.length; chunkIndex++) {
            const chunk = chunks[chunkIndex];
            const numberOfLines = chunk.length;
            let dumps = "";

            // Make separated blocks of inserting data
            for (let i = 0; i < numberOfLines; i += dumpSize) {
                const dataBlock = chunk
                    .slice(i, Math.min(i + dumpSize, numberOfLines))
                    .join(",\n");
                const insertQuery = `INSERT INTO \`${tableName}\` (${colNamesString}) VALUES \n${dataBlock}`;
                dumps += insertQuery + ";\n";
            }

            let result = "";

            if (shouldCreateTable && !isCreatingTableCodeAdded) {
                result += `SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
  START TRANSACTION;
  SET time_zone = "+00:00";
  
  CREATE TABLE \`${tableName}\` (
  ${colNamesStringExtended}
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
  
  `;
                isCreatingTableCodeAdded = true;
            }

            result += dumps;

            const outputFilename = `${fileName}_${chunkIndex + 1}.sql`;
            const outputPath = join(outputDir, outputFilename);
            writeFileSync(outputPath, result);
            console.log(
                `Записан файл ${outputFilename} (source ${outputFilename})`
            );
        }
    }
}

function checkDuplicats(filename, sep = ";") {
    const columnsToCheck = ["NAAB Код", "InterRegNumber"];
    const counter = {};

    // Read CSV data
    const text = readFileSync("./input/" + filename).toString();

    const data = text.split("\n");
    const head = data[0].split(sep);

    const rows = data.slice(1);

    const columnNumbersToCheck = columnsToCheck.map((columnName) =>
        head.findIndex((headName) => headName === columnName)
    );

    rows.forEach((row) => {
        const values = row.split(sep);

        const key = columnNumbersToCheck
            .map((number) => values[number])
            .join("-");

        counter[key] = (counter[key] || 0) + 1;
    });

    console.log(
        Object.entries(counter)
            .filter(([key, value]) => value > 1)
            .sort((a, b) => b[1] - a[1])
    );

    return counter;
}

const tableName = "AltaGenAugust2025";
const breed = "HO";
const shouldCreateTable = true;

// const countDuplicates = checkDuplicats(filename);
// console.log(countDuplicates);

createTableAndFillFromCSV(tableName, columns);

// const a = `NAAB Code;InterRegNumber;Name;Full Name;Breed;TPI;NM$;CM$;FM$;GM$;Milk;Protein;Prot%;Fat;Fat %;CFP;FE;Feed Saved;Prel;D / H;PL;C-LIV;H-LIV;FI;DPR;SCS;SCE;SCE Rel;SCE Obs;DCE;SSB;DSB;CCR;HCR;EFC;GL;MAST;KET;RP;MET;DA;MF;MS;DWP$;WT$;CW$;PTAT;UDC;FLC;BWC;DC;TRel;D / H;Stature;Strength;Body Depth;Dairy form;Rump Angle;Thurl Width;RLSV;RLRV;Foot Angle;FLS;F. Udder Att.;R Udder Height;Rear Udder Width;Udder Cleft;Udder Depth;FTP;RTP;Teat Length;Pedigree;aAa;DMS;Kappa-Casein;Beta-Casein;B-LACT;Genetic Codes;Haplotypes;RHA;EFI;Birth Date;Proof;ADV;GS;FS;511;EDGE;CP;CP511
// string;string;string;string;string;integer;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;string;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;string;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;decimal;string;string;string;string;string;string;string;string;decimal;decimal;string;string;string;string;string;string;string;string;string`;

// const b = a.split("\n");

// const c = b[1].split(";");

// const d = b[0].split(";").reduce(
//   (acc, fieldName, index) => ({
//     ...acc,
//     [fieldName]: {
//       type: c[index],
//     },
//   }),
//   {}
// );

// console.log(JSON.stringify(d));

// // Обновление колонок
// function generateAlterTableSQL(tableName, columns) {
//     // Начало SQL-запроса
//     let sql = `ALTER TABLE ${tableName} `;

//     // Массив для хранения изменений
//     const changes = [];

//     // Проходим по каждому столбцу
//     columns.forEach(column => {
//         // Формируем часть запроса для изменения столбца
//         changes.push(`MODIFY COLUMN \`${column.name}\` ${column.type}`);
//     });

//     // Объединяем все изменения в один запрос
//     sql += changes.join(", ") + ";";

//     return sql;
// }

// // Пример использования
// const sqlQuery = generateAlterTableSQL(tableName, columns);
// console.log(sqlQuery);
