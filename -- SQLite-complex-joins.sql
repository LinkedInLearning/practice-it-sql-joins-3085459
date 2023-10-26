-- SQLite
SELECT
ResellerName,
AddressLine1,
AddressLine2,
G.City,
G.StateProvinceCode,
G.PostalCode,
G.CountryRegionCode,
S.ProductKey,
P.ProductSubcategoryKey,
S.SalesAmount
FROM
DimReseller as R
LEFT JOIN FactResellerSales as S
ON R.ResellerKey = S.ResellerKey
INNER JOIN DimGeography as G
on R.GeographyKey = G.GeographyKey
LEFT JOIN DimProduct as P
on S.ProductKey = P.ProductKey
WHERE G.CountryRegionCode = 'US'
ORDER BY S.SalesAmount ASC;