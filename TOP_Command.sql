/*
	TOP:           Limits the Rows to a specific number
	TOP PERCENT:   Limits the results percentage of data from the results
	WITH TIES:     (Requires ORDER BY) if there are ties in the results they can be returned
*/

SELECT TOP 3 * from Person.Person
ORDER BY LastName

SELECT TOP 1 PERCENT * from Person.Person
ORDER BY LastName
