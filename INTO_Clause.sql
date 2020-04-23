/*
	SELECT INTO: Creates a new table in the default filegroup and inserts the resulting rows from the query into it
				-It creates a new table based on the columns included in the SELECT column
*/

SELECT Name, CountryRegionCode, [Group], SalesYTD
INTO SalesTestTable
FROM Sales.SalesTerritory
