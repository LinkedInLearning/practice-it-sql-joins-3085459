-- SQLite Chapter 2.3

-- create views
create view vwCUSTOMER_ADDRESS
as SELECT
CustomerKey,
AddressLine1,
AddressLine2,
GeographyKey
FROM
DimCustomer;

CREATE view vwCUSTOMER_BIRTHDATE
AS SELECT
	CustomerKey,
	Title,
	FirstName,
	MiddleName,
	LastName,
	NameStyle,
	BirthDate
FROM 
DimCustomer;

