-- SQLite
Select  p.ProductKey,
p.EnglishProductName, s.*
FROM DimProduct p
LEFT JOIN FactInternetSales s ON p.ProductKey = s.ProductKey;