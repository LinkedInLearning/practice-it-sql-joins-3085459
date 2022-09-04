-- SQLite
SELECT
p.ProductKey,
p.EnglishProductName,
s.*
FROM FactInternetSales s 
LEFT JOIN DimProduct p ON p.ProductKey = s.ProductKey;