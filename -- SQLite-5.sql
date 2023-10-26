-- SQLite
DROP VIEW customer_email_a;
CREATE VIEW customer_email_a AS
SELECT CustomerKey, EmailAddress FROM DimCustomer
WHERE EmailAddress like '%a%adventure_works.com';

DROP VIEW customer_address_us;
CREATE VIEW customer_address_us AS
SELECT CustomerKey, AddressLine1, AddressLine2, C.GeographyKey FROM DimCustomer C
JOIN DimGeography G ON C.GeographyKey = G.GeographyKey
WHERE CountryRegionCode = 'US';

SELECT C.CustomerKey,C.FirstName, C.LastName, A.EmailAddress, B.GeographyKey
FROM DimCustomer C
LEFT JOIN customer_email_a as A
ON C.CustomerKey = A.CustomerKey
LEFT JOIN customer_address_us as B
ON C.CustomerKey = B.CustomerKey;

SELECT p.ProductKey, sum(s.SalesAmount) AS Sum_of_Sales
FROM DimProduct p
LEFT JOIN FactInternetSales s USING(ProductKey)
GROUP BY p.ProductKey;

SELECT DimProduct.ProductKey, DimProduct.EnglishProductName, FactInternetSales.OrderDate, FactInternetSales.OrderQuantity, FactInternetSales.SalesAmount
FROM DimProduct
LEFT JOIN FactInternetSales
ON DimProduct.ProductKey = FactInternetSales.ProductKey
ORDER BY DimProduct.ProductKey;