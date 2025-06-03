-- SQLite
SELECT a.*, b.*
FROM
FactInternetSales a
INNER JOIN
FactSurveyResponse b
ON
a.OrderDate = b.Date