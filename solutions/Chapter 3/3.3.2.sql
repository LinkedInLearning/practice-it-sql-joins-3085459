-- SQLite
 SELECT p.ProductKey, 
 sum(s.SalesAmount) as Sum_of_Sales
from DimProduct p
left join FactInternetSales s using(ProductKey)
group by p.ProductKey
