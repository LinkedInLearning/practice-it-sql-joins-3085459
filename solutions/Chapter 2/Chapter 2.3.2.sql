-- SQLite
SELECT a.*, b.* 
from vwCUSTOMER_BIRTHDATE a 
INNER JOIN vwCUSTOMER_ADDRESS b 
ON a.CustomerKey = b.CustomerKey