/*
	OFFSET-FETCH: Result set filtering option similar to TOP
				- Used after ORDER BY
				- Limits the number of rows returned
				- Ability to skip rows
				- Useful for creating results-paging functionality
*/

SELECT DISTINCT FirstName, LastName
FROM Person.Person
ORDER BY LastName ASC, FirstName ASC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
