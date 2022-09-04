-- SQLite
select  DimProduct.ProductKey, 
DimProduct.EnglishProductName, 
FactInternetSales.OrderDate, 
FactInternetSales.OrderQuantity, 
FactInternetSales.SalesAmount 
from DimProduct
left join FactInternetSales
on DimProduct.ProductKey = FactInternetSales.ProductKey
order by DimProduct.ProductKey;