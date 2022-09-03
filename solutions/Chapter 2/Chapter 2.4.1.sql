-- SQLite
SELECT A.EnglishProductName,
B.EnglishProductName,
A.ProductSubcategoryKey
FROM DimProduct A
INNER JOIN  DimProduct B
ON A.ProductKey <> B.ProductKey
AND A.ProductSubcategoryKey = B.ProductSubcategoryKey
ORDER BY A.ProductSubcategoryKey;