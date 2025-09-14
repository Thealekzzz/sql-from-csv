import * as XLSX from 'xlsx';

const dublicatesCounter = {};

export function parseXlsx(buffer) {
    try {
        const workbook = XLSX.read(buffer, { type: 'buffer' });
        const firstSheetName = workbook.SheetNames[0];
        if (!firstSheetName) {
            throw new Error('No sheets found in XLSX file');
        }
        const worksheet = workbook.Sheets[firstSheetName];
        const jsonData = XLSX.utils.sheet_to_json(worksheet, { header: 1 });

        if (jsonData.length === 0) {
            return { headers: [], rows: [] };
        }

        const headers = jsonData[0].map((h) => String(h).trim());
        const rows = jsonData.slice(1).filter((row) => {
            const key = row[0] + row[1] + row[2];
            if (!dublicatesCounter[key]) {
                dublicatesCounter[key] = 1;
                return true;
            }

            return false;
        });
        // .map((row) =>
        //     row.map((cell) => {
        //         if (!cell) {
        //             return '';
        //         }

        //         if (Number.isNaN(Number(cell))) {
        //             return `'${cell}'`;
        //         }

        //         return cell;
        //     }),
        // );

        return { headers, rows };
    } catch (error) {
        throw new Error(`Error parsing XLSX: ${error.message}`);
    }
}
