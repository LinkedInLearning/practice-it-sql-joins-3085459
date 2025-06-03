-- SQLite
SELECT a.*,b.*
FROM
customer_address_us a
LEFT JOIN FactInternetSales b
ON a.CustomerKey = b.CustomerKey
UNION
SELECT a.*,b.*
FROM FactInternetSales b
LEFT JOIN customer_address_us a
ON a.CustomerKey = b.CustomerKey;