-- SQLite
SELECT a.*,b.* FROM
DimCustomer a
INNER JOIN
FactInternetSales b
ON a.CustomerKey = b.CustomerKey
ORDER BY a.CustomerKey;