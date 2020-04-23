/*
	INTERSECT: 
			-Values common to both tables
			- Returns DISTINCT values from the queries on BOTH the LEFT and RIGHT side of INTERSECT query
	EXCEPT:
			-Values not common to both tables
			-Returns DISTINCT values from the LEFT query that are not found on the RIGHT query
*/



--SELECT BusinessEntityID
--FROM Person.Person
--INTERSECT
--SELECT BusinessEntityID
--FROM HumanResources.Employee
--ORDER BY BusinessEntityID

--SELECT BusinessEntityID
--FROM Person.Person
--EXCEPT
--SELECT BusinessEntityID
--FROM HumanResources.Employee
--ORDER BY BusinessEntityID
