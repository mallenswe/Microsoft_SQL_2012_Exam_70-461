/*
	IS NULL: Unknown value, not equal to anything
	IS NOT NULL: Known value
*/

SELECT Title, FirstName, LastName
FROM Person.Person
WHERE Title IS NOT NULL
ORDER BY LastName, FirstName;
