import { columns } from '../consts.js';

export function getAllUniqueHeaders(allParsedData) {
    const allHeaders = new Set();
    allParsedData.forEach(({ headers }) => {
        headers.forEach((header) => allHeaders.add(header));
    });
    return Array.from(allHeaders);
}

export function normalizeRowsToHeaders(rows, currentHeaders) {
    // Создаем карту, где ключ - заголовок из columns, значение - индекс этого заголовка в currentHeaders
    const headerMap = new Map();
    columns.slice(1).forEach((column, index) => {
        const currentIndex = currentHeaders.indexOf(column.ruColumnNameInTable);
        if (currentIndex !== -1) {
            headerMap.set(index, {
                currentIndex,
                isDigit: column.isDigit,
                header: column.ruColumnNameInTable,
                tableheader: currentHeaders[currentIndex],
                isFound: true,
            });
        } else {
            const currentIndex = currentHeaders.indexOf(column.columnNameInTable);
            if (currentIndex !== -1) {
                headerMap.set(index, {
                    currentIndex,
                    isDigit: column.isDigit,
                    header: column.columnNameInTable,
                    tableheader: currentHeaders[currentIndex],
                    isFound: true,
                });

            } else {
                headerMap.set(index, {
                    isDigit: column.isDigit,
                    isFound: false,
                });
            }
        }
    });

    // Преобразуем строки
    return rows.map((row) => {
        // Создаем новую строку с нужным количеством колонок, заполненную пустыми строками
        const normalizedRow = new Array(columns.length - 1).fill('');

        // Заполняем новую строку данными из исходной строки согласно карте заголовков
        headerMap.forEach(({ currentIndex, isDigit, isFound, header }, newIndex) => {
            if (isFound) {
                normalizedRow[newIndex] = row[currentIndex]
                    ? isDigit
                        ? row[currentIndex]
                        : `'${typeof row[currentIndex] === 'string' ? row[currentIndex].replace(/'/g, "''") : row[currentIndex]}'`
                    : 'NULL';
            } else {
                normalizedRow[newIndex] = 'NULL';
            }
        });

        return normalizedRow;
    });
}

export function mergeAllData(allParsedData) {
    let mergedRows = [];

    const headersForDB = columns.slice(1).map(({ ruColumnNameInTable }) => ruColumnNameInTable);

    allParsedData.forEach(({ rows, headers: currentHeaders }) => {
        const normalized = normalizeRowsToHeaders(rows, currentHeaders);
        mergedRows = mergedRows.concat(normalized);
    });
    return { headers: headersForDB, rows: mergedRows };
}
