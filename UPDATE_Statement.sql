/*
	UPDATE: Used to modify data that already exists in the table.
			- This processes a DELETE, INSERT by SQL Server
			- All Columns in the row are affected by the UPDATE
			- ALWAYS include a WHERE clause to limit the number of rows being updated
*/


--SELECT TOP(10) * 
--FROM Person.Address

--UPDATE Person.Address
--SET AddressLine1 = '1227 Shoe St.'
--WHERE AddressLine1 = '1226 Shoe St.'

SELECT *
FROM Sales.SalesPerson
ORDER BY TerritoryID

--UPDATE Sales.SalesPerson
--SET Bonus = 6000, CommissionPct = .10, SalesQuota = NULL
--WHERE TerritoryID = 1;
