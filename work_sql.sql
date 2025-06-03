CREATE VIEW vwCUSTOMER_ADDRESS
AS SELECT
CustomerKey,
AddressLine1,
AddressLine2,
GeographyKey
FROM
DimCustomer;

CREATE VIEW vwCUSTOMER_BIRTHDATE
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

