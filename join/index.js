import fs from 'fs';
import path from 'path';
import XLSX from 'xlsx';

async function mergeXlsxFiles() {
    try {
        // Папки ввода и вывода
        const inputDir = './input';
        const outputDir = './result';

        // Создаем папку result, если она не существует
        await fs.promises.mkdir(outputDir, { recursive: true });

        // Получаем список всех xlsx файлов в папке input
        const files = await fs.promises.readdir(inputDir);
        const xlsxFiles = files.filter(
            (file) => path.extname(file).toLowerCase() === '.xlsx',
        );

        if (xlsxFiles.length === 0) {
            console.log('В папке input не найдено xlsx файлов');
            return;
        }

        // Читаем каждый xlsx файл
        for (const file of xlsxFiles) {
            const filePath = path.join(inputDir, file);
            const fileName = file.replace('.xslx', '');

            // Читаем xlsx файл
            const workbook = XLSX.readFile(filePath);

            // Получаем первый лист
            const sheetName = workbook.SheetNames[0];
            const worksheet = workbook.Sheets[sheetName];

            // Конвертируем лист в массив объектов
            const data = XLSX.utils
                .sheet_to_csv(worksheet, { FS: ';' })
                .replace(/'/g, `"`);

            const outputPath = path.join(outputDir, `${fileName}.csv`);
            fs.writeFileSync(outputPath, data);
            console.log(`Записан файл: ${fileName}.csv`);
        }
    } catch (error) {
        console.error('Произошла ошибка:', error.message);
    }
}

// Запускаем функцию
mergeXlsxFiles();
