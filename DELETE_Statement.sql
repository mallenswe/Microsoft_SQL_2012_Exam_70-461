/*
	DELETE: Removes one or more rows from a table
		- ALWAYS user a WHERE clause
		- If you want to remove all rows from a tables use TRUNCATE TABLE
*/

--SELECT TOP 25 LastName, FirstName
--INTO DeleteExample
--FROM Person.Person

--SELECT *
--FROM DeleteExample

--DELETE
--FROM DeleteExample
--WHERE LastName='Abercrombie' AND FirstName='Kim'

--SELECT LastName, FirstName
DELETE
FROM DeleteExample
WHERE LastName='Adams' AND FirstName='Ben'


