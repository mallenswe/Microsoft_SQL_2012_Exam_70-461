/*
	ORDER BY: Sorts based on specified column or columns, NULLS are treated as the lowest possible value
*/

SELECT LastName, FirstName, EmailPromotion
FROM Person.Person
ORDER BY LastName ASC, FirstName DESC
