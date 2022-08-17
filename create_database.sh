#!/bin/sh
sqlite3 AdventureWorks.db <<EOF
.read create_tables.sql
.mode list
.import csv/DimCurrency.csv DimCurrency
.import csv/DimCustomer.csv DimCustomer
.import csv/DimDate.csv DimDate
.import csv/DimDepartmentGroup.csv DimDepartmentGroup
.import csv/DimEmployee.csv DimEmployee
.import csv/DimGeography.csv DimGeography
.import csv/DimOrganization.csv DimOrganization
.import csv/DimProduct.csv DimProduct
.import csv/DimProductCategory.csv DimProductCategory
.import csv/DimProductSubcategory.csv DimProductSubcategory
.import csv/DimPromotion.csv DimPromotion
.import csv/DimSalesReason.csv DimSalesReason
.import csv/DimSalesTerritory.csv DimSalesTerritory
.import csv/FactCurrencyRate.csv FactCurrencyRate
.import csv/FactInternetSales.csv FactInternetSales
.import csv/FactInternetSalesReason.csv FactInternetSalesReason
.import csv/FactSurveyResponse.csv FactSurveyResponse
.import csv/DimReseller.csv DimReseller
.import csv/FactResellerSales.csv FactResellerSales

.quit
EOF