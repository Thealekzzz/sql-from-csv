import { readFileSync, writeFileSync } from 'fs';

function createTableAndFillFromCSV(filename, tableName, columns, sep = ';', dumpSize = 65) {

  // Read CSV data
  const text = readFileSync(filename).toString();

  // Make columns description
  const colNamesStringExtended = columns.map((column) => `\`${column.name}\` ${column.type}`).join(',\n');
  const colNamesString = columns.map((column) => `\`${column.name}\``).join(',');

  // Make rows data
  const lines = text
    .split('\n')
    .map((line) => line
      .split(sep)
      .map((char) => `'${char.replace('\r', '')}'`)
      .join(','))
    .map((line) => `(${line})`);

  let dumps = '';
  const numberOfLines = lines.length;

  // Make separated blocks of inserting data
  for (let i = 0; i < numberOfLines; i += dumpSize) {
    const dataBlock = lines.slice(i, Math.min(i + dumpSize, numberOfLines)).join(',\n');
    const insertQuery = `INSERT INTO \`${tableName}\` (${colNamesString}) VALUES \n${dataBlock}`;
    dumps += insertQuery + ';\n';
  }

  return `
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE \`${tableName}\` (
${colNamesStringExtended}
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

${dumps}
`;
}

const columns = [
  { name: 'NAAB Code', type: 'varchar(10) DEFAULT NULL' },
  { name: 'InterRegNumber', type: 'varchar(18) DEFAULT NULL' },
  { name: 'Name', type: 'varchar(20) DEFAULT NULL' },
  { name: 'Full Name', type: 'varchar(50) DEFAULT NULL' },
  { name: 'Breed', type: 'varchar(9) DEFAULT NULL' },
  { name: 'TPI', type: 'varchar(4) DEFAULT NULL' },
  { name: 'NM$', type: 'varchar(5) DEFAULT NULL' },
  { name: 'CM$', type: 'varchar(5) DEFAULT NULL' },
  { name: 'FM$', type: 'varchar(5) DEFAULT NULL' },
  { name: 'GM$', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Milk', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Protein', type: 'varchar(4) DEFAULT NULL' },
  { name: 'Prot%', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Fat', type: 'varchar(4) DEFAULT NULL' },
  { name: 'Fat %', type: 'varchar(5) DEFAULT NULL' },
  { name: 'CFP', type: 'varchar(5) DEFAULT NULL' },
  { name: 'FE', type: 'varchar(4) DEFAULT NULL' },
  { name: 'Feed Saved', type: 'varchar(4) DEFAULT NULL' },
  { name: 'Prel', type: 'varchar(3) DEFAULT NULL' },
  { name: 'D / H', type: 'varchar(11) DEFAULT NULL' },
  { name: 'PL', type: 'varchar(5) DEFAULT NULL' },
  { name: 'C-LIV', type: 'varchar(5) DEFAULT NULL' },
  { name: 'H-LIV', type: 'varchar(4) DEFAULT NULL' },
  { name: 'DPR', type: 'varchar(4) DEFAULT NULL' },
  { name: 'SCS', type: 'varchar(4) DEFAULT NULL' },
  { name: 'SCE', type: 'varchar(4) DEFAULT NULL' },
  { name: 'SCE Rel', type: 'varchar(3) DEFAULT NULL' },
  { name: 'SCE Obs', type: 'varchar(5) DEFAULT NULL' },
  { name: 'DCE', type: 'varchar(3) DEFAULT NULL' },
  { name: 'SSB', type: 'varchar(4) DEFAULT NULL' },
  { name: 'DSB', type: 'varchar(4) DEFAULT NULL' },
  { name: 'CCR', type: 'varchar(4) DEFAULT NULL' },
  { name: 'HCR', type: 'varchar(4) DEFAULT NULL' },
  { name: 'EFC', type: 'varchar(5) DEFAULT NULL' },
  { name: 'GL', type: 'varchar(4) DEFAULT NULL' },
  { name: 'MAST', type: 'varchar(4) DEFAULT NULL' },
  { name: 'KET', type: 'varchar(4) DEFAULT NULL' },
  { name: 'RP', type: 'varchar(4) DEFAULT NULL' },
  { name: 'MET', type: 'varchar(4) DEFAULT NULL' },
  { name: 'DA', type: 'varchar(4) DEFAULT NULL' },
  { name: 'MF', type: 'varchar(4) DEFAULT NULL' },
  { name: 'MS', type: 'varchar(3) DEFAULT NULL' },
  { name: 'DWP$', type: 'varchar(4) DEFAULT NULL' },
  { name: 'WT$', type: 'varchar(4) DEFAULT NULL' },
  { name: 'CW$', type: 'int DEFAULT NULL' },
  { name: 'PTAT', type: 'varchar(5) DEFAULT NULL' },
  { name: 'UDC', type: 'varchar(6) DEFAULT NULL' },
  { name: 'FLC', type: 'varchar(5) DEFAULT NULL' },
  { name: 'BWC', type: 'varchar(5) DEFAULT NULL' },
  { name: 'DC', type: 'varchar(5) DEFAULT NULL' },
  { name: 'TRel', type: 'varchar(5) DEFAULT NULL' },
  { name: 'D / H2', type: 'varchar(11) DEFAULT NULL' },
  { name: 'Stature', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Strength', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Body Depth', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Dairy form', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Rump Angle', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Thurl Width', type: 'varchar(5) DEFAULT NULL' },
  { name: 'RLSV', type: 'varchar(5) DEFAULT NULL' },
  { name: 'RLRV', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Foot Angle', type: 'varchar(5) DEFAULT NULL' },
  { name: 'FLS', type: 'varchar(5) DEFAULT NULL' },
  { name: 'F. Udder Att.', type: 'varchar(5) DEFAULT NULL' },
  { name: 'R Udder Height', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Rear Udder Width', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Udder Cleft', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Udder Depth', type: 'varchar(5) DEFAULT NULL' },
  { name: 'FTP', type: 'varchar(5) DEFAULT NULL' },
  { name: 'RTP', type: 'varchar(5) DEFAULT NULL' },
  { name: 'RTP SV', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Teat Length', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Pedigree', type: 'varchar(90) DEFAULT NULL' },
  { name: 'aAa', type: 'varchar(14) DEFAULT NULL' },
  { name: 'DMS', type: 'varchar(16) DEFAULT NULL' },
  { name: 'Kappa-Casein', type: 'varchar(5) DEFAULT NULL' },
  { name: 'Beta-Casein', type: 'varchar(4) DEFAULT NULL' },
  { name: 'BBR', type: 'varchar(4) DEFAULT NULL' },
  { name: 'B-LACT', type: 'varchar(3) DEFAULT NULL' },
  { name: 'Genetic Codes', type: 'varchar(34) DEFAULT NULL' },
  { name: 'Haplotypes', type: 'varchar(37) DEFAULT NULL' },
  { name: 'RHA', type: 'varchar(37) DEFAULT NULL' },
  { name: 'EFI', type: 'varchar(4) DEFAULT NULL' },
  { name: 'Birth Date', type: 'varchar(10) DEFAULT NULL' },
  { name: 'Proof', type: 'varchar(10) DEFAULT NULL' },
  { name: 'ADV', type: 'varchar(10) DEFAULT NULL' },
  { name: 'GS', type: 'varchar(10) DEFAULT NULL' },
  { name: 'FS', type: 'varchar(2) DEFAULT NULL' },
  { name: '511', type: 'varchar(3) DEFAULT NULL' },
  { name: 'EDGE', type: 'varchar(3) DEFAULT NULL' },
  { name: 'CP', type: 'varchar(2) DEFAULT NULL' },
  { name: 'CP511', type: 'varchar(5) DEFAULT NULL' }
];

const filename = 'data-in-csv.txt';
const resultFilename = 'query.sql';
const tableName = 'testTable';

const resultQuery = createTableAndFillFromCSV(filename, tableName, columns);
writeFileSync(resultFilename, resultQuery);
