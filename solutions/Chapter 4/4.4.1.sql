-- SQLite
SELECT a.*, b.*
FROM
DimCustomer a
LEFT JOIN FactSurveyResponse b
ON a.CustomerKey = b.CustomerKey
UNION
SELECT a.*, b.*
FROM
FactSurveyResponse b
LEFT JOIN DimCustomer a
ON a.CustomerKey = b.CustomerKey;