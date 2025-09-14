import { writeFileSync } from 'fs';

export function writeToCsv(outputPath, headers, rows) {
    try {
        const csvContent = [headers.join(';'), ...rows.map((row) => row.join(';'))]
            .join('\n')
            .replace(/'/g, '"')
            .replace('\r', '');

        writeFileSync(outputPath, csvContent, 'utf8');
        console.log(`CSV file written successfully to ${outputPath}`);
    } catch (error) {
        throw new Error(`Error writing CSV to ${outputPath}: ${error.message}`);
    }
}
