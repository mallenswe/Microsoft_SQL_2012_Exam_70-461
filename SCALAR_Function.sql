/*
	Functions: Reusable Logic
		Scalar Values: Returns a single value back to the caller
		Tables: 
			- Table-Valued User-defined-function
				- Single line of code is called inline table-valued UDG
				- Multiple lines of code is called multi-statement table-valued UDF
			- Returns a table
			- Can appear in the FROM clause of a query
				- Used as a table
			- NOTE: Cannot
				- Apply Schema or data changes in the database
				- Create or access temp tables
				- Call a stored procedure
				- Execute dynamic SQL

*/

--SELECT
--	COUNT(Freight) Nbr,
--	SUM(Freight) 'Avg'
--FROM
--	sales.SalesOrderHeader

--SELECT *
--FROM Sales.SalesOrderHeader

--CREATE FUNCTION TandF(
--	@tax money,
--	@freight money
--)
--RETURNS INT
--AS
--BEGIN
--	RETURN @tax + @freight
--END

SELECT SalesOrderID, dbo.TandF(TaxAmt, Freight) 'Tax/Freight'
FROM
	Sales.SalesOrderHeader
