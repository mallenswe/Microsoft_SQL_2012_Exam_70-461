/*
	LIKE: Use LIKE with WHERE to match a specified string pattern
	IN: Determines whether a specified value matches any value in a subquery or list
*/

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'W_x%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[adr]%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[^a-f]%'

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName IN ('Russell','Ryan','Diaz')
