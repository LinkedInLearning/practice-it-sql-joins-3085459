-- SQLite
drop view customer_email_a;
create view customer_email_a as
select CustomerKey, EmailAddress from DimCustomer
where  EmailAddress like '%a%@adventure-works.com';

drop view customer_address_us;
create view customer_address_us  as
select CustomerKey, AddressLine1, AddressLine2, C.GeographyKey from DimCustomer C
join DimGeography G ON C.GeographyKey = G.GeographyKey
where  CountryRegionCode = 'US';