-- SQLite
select C.CustomerKey,
C.FirstName,
C.LastName, 
A.EmailAddress,
B.GeographyKey
from 
DimCustomer C
LEFT JOIN customer_email_a as A 
ON C.CustomerKey = A.CustomerKEY
LEFT JOIN customer_address_us as B
ON C.CustomerKey = B.CustomerKEY