/*
	SUBQUERY: A nested query.
			- The results of one query is used by another query

			- Simple: The subquery produces a single result that is used in the main query.
						- Returns a single value, a list of values from a single column, or a true or false

			- Correlated: Is a subquery that depends on a value in the outer query

			- Can return results sets in three forms
				- Scalar: Single Value
				- Multi-valued: More than one value
				- Table-valued: Returns a table of data
			- No need to:
				- create a variable
				- Execute a query
				- Store results in a variable
				- Refer to the variable in a query

		-- Outer Query is where the main query starts
		-- Inner Query is the query providing data to the outer query
*/

-- /////     Scalar Subquery     \\\\\
--SELECT
--	SalesOrderID
--	,MAX(TotalDue) AS 'Total Due'
--FROM Sales.SalesOrderHeader
--GROUP BY SalesOrderID
--ORDER BY MAX(TotalDue) DESC

--SELECT
--	SalesOrderID
--	,TotalDue
--FROM  Sales.SalesOrderHeader
--WHERE TotalDue = 
--	(
--		SELECT
--			MAX(TotalDue)
--		FROM Sales.SalesOrderHeader
--	)


-- /////     Multi-Valued Subquery     \\\\\
--SELECT 
--	e.BusinessEntityID
--	,p.Title
--	,p.FirstName
--	,p.LastName
--FROM Person.Person p
--JOIN HumanResources.Employee e ON p.BusinessEntityID = e.BusinessEntityID
--WHERE Title = 'Mr.'

--SELECT 
--	e.BusinessEntityID
--FROM HumanResources.Employee e
--WHERE e.BusinessEntityID IN
--	(SELECT
--		BusinessEntityID
--	FROM Person.Person
--	WHERE Title = 'Mr.'
--	)

-- /////     Correlated Subquery     \\\\\
--SELECT 
--	DISTINCT p.BusinessEntityID
--	,p.FirstName + ' ' + p.LastName 'Name'
--FROM 
--	Person.Person p
--JOIN 
--	Sales.SalesOrderHeader s ON p.BusinessEntityID = s.SalesPersonID
--WHERE s.TotalDue > 150000

--SELECT
--	p.BusinessEntityID
--	,p.FirstName + ' ' + p.LastName 'Sales Person'
--FROM
--	Person.Person p
--WHERE EXISTS
--	(
--		SELECT
--			s.SalesPersonID
--		FROM
--			Sales.SalesOrderHeader s
--		WHERE
--			TotalDue > 150000
--		AND p.BusinessEntityID = s.SalesPersonID
--	)
