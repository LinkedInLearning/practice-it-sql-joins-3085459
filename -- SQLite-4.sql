-- SQLite
SELECT A.EnglishProductName, B.EnglishProductName, A.ProductSubcategoryKey
FROM  DimProduct A
INNER JOIN  DimProduct B
ON  A.ProductKey <> B.ProductKey
ORDER BY A.ProductSubcategoryKey;
