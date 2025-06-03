-- SQLite
SELECT p.ProductKey,
p.EnglishProductName, s.*
FROM DimProduct p
LEFT JOIN FactInternetSales s ON p.ProductKey = s.ProductKey;

SELECT
p.ProductKey,
p.EnglishProductName,
s.*
FROM FactInternetSales s
LEFT JOIN DimProduct p ON p.ProductKey = s.ProductKey;