import { promises as fs } from 'fs';
import path from 'path';

export async function getXlsxFilesInDirectory(dirPath) {
    try {
        const entries = await fs.readdir(dirPath, { withFileTypes: true });
        const xlsxFiles = entries
            .filter((entry) => entry.isFile() && path.extname(entry.name).toLowerCase() === '.xlsx')
            .map((entry) => path.join(dirPath, entry.name));
        return xlsxFiles;
    } catch (error) {
        throw new Error(`Error reading directory ${dirPath}: ${error.message}`);
    }
}

export async function readFileContent(filePath) {
    try {
        return await fs.readFile(filePath);
    } catch (error) {
        throw new Error(`Error reading file ${filePath}: ${error.message}`);
    }
}
