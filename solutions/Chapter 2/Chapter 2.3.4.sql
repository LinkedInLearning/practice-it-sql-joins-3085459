-- SQLite
SELECT a.*, b.* from  
FactInternetSales a
INNER JOIN
DimCustomer b
ON a.CustomerKey = b.CustomerKey
ORDER By a.CustomerKey;