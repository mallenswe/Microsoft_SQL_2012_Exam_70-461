/*
	UNION: Combine the results of two or more queries into a single result set
			- Includes all the rows that belong to all queries in the union
			- Duplicate Rows will be removed by default, Use ALL to include duplicates
			- The number and order of columns must be the same in all queries
*/

--SELECT LastName, FirstName
--INTO Test1
--FROM Person.Person
--WHERE LastName LIKE 'Del%'

--SELECT LastName, FirstName
--INTO Test2
--FROM Person.Person
--WHERE LastName LIKE 'Abe%'

SELECT LastName, FirstName
FROM Test1
UNION ALL
SELECT LastName, FirstName
FROM Test2
ORDER BY FirstName

