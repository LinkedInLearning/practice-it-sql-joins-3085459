-- SQLite
SELECT a.*, b.* from  
DimCustomer a
INNER JOIN
FactInternetSales b
ON a.CustomerKey = b.CustomerKey
ORDER By a.CustomerKey;