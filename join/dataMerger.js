import { columns } from '../consts.js';

export function getAllUniqueHeaders(allParsedData) {
    const allHeaders = new Set();
    allParsedData.forEach(({ headers }) => {
        headers.forEach((header) => allHeaders.add(header));
    });
    return Array.from(allHeaders);
}

export function normalizeRowsToHeaders(rows, headers, currentHeaders) {
    // Создаем карту, где ключ - заголовок из headers, значение - индекс этого заголовка в currentHeaders
    const headerMap = new Map();
    headers.slice(1).forEach((header, index) => {
        const currentIndex = currentHeaders.indexOf(header.ruColumnNameInTable);
        if (currentIndex !== -1) {
            headerMap.set(index, {
                currentIndex,
                isDigit: header.isDigit,
                header: header.ruColumnNameInTable,
                tableheader: currentHeaders[currentIndex],
                notFoundValue: null,
            });
        } else {
            headerMap.set(index, {
                isDigit: header.isDigit,
                notFoundValue: 'NULL',
            });
        }
    });

    // Преобразуем строки
    return rows.map((row) => {
        // Создаем новую строку с нужным количеством колонок, заполненную пустыми строками
        const normalizedRow = new Array(headers.length - 1).fill('');

        // Заполняем новую строку данными из исходной строки согласно карте заголовков
        headerMap.forEach(({ currentIndex, isDigit, notFoundValue }, newIndex) => {
            if (notFoundValue === null) {
                normalizedRow[newIndex] = row[currentIndex]
                    ? isDigit
                        ? row[currentIndex]
                        : `'${row[currentIndex]}'`
                    : 'NULL';
            } else {
                normalizedRow[newIndex] = notFoundValue;
            }
        });

        return normalizedRow;
    });
}

export function mergeAllData(allParsedData) {
    let mergedRows = [];

    const headersForDB = columns.slice(1).map(({ ruColumnNameInTable }) => ruColumnNameInTable);

    allParsedData.forEach(({ rows, headers: currentHeaders }) => {
        const normalized = normalizeRowsToHeaders(rows, columns, currentHeaders);
        mergedRows = mergedRows.concat(normalized);
    });
    return { headers: headersForDB, rows: mergedRows };
}
