/*
	Column Aliasing: Allows column renaming for the query output
*/

SELECT FirstName AS [First], LastName AS [Last]
FROM Person.Person
ORDER BY LastName, FirstName
