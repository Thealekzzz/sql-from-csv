import path from 'path';
import { getXlsxFilesInDirectory, readFileContent } from './fileUtils.js';
import { parseXlsx } from './xlsxParser.js';
import { mergeAllData } from './dataMerger.js';
import { writeToCsv } from './csvWriter.js';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
    const inputDir = path.join(__dirname, '..', 'input');
    const outputPath = path.join(__dirname, 'output.csv');

    try {
        // Step 1: Get list of XLSX files
        const xlsxFiles = await getXlsxFilesInDirectory(inputDir);
        if (xlsxFiles.length === 0) {
            console.log('No XLSX files found in input directory.');
            return;
        }

        // Step 2: Read and parse each file
        const allParsedData = [];
        for (const filePath of xlsxFiles) {
            const buffer = await readFileContent(filePath);
            const parsed = parseXlsx(buffer);
            allParsedData.push(parsed);
            console.log(`Parsed ${path.basename(filePath)}: ${parsed.rows.length} rows`);
        }

        // Step 3: Merge data
        const mergedData = mergeAllData(allParsedData);
        console.log(`Merged data: ${mergedData.headers.length} columns, ${mergedData.rows.length} rows`);

        // Step 4: Write to CSV
        writeToCsv(outputPath, mergedData.headers, mergedData.rows);

        return {
            headers: mergedData.headers,
            rows: mergedData.rows,
        };
    } catch (error) {
        console.error('Error in main process:', error.message);
        process.exit(1);
    }
}

if (process.argv[1] === fileURLToPath(import.meta.url)) {
    main();
}

export { main };
