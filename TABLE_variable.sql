/*
	Table Variables: TABLE data type can be used to store a result set
			- Often called a Table Variable
			Advantages:
				- Very Fast
				- Automatically cleaned-up
			Disadvantages:
				- Can significantly impact performance if used to store more than 100 rows of data
				- Not supported in the query optimizer's cost-based reasoning
*/


DECLARE @mtl TABLE
	(
		FirstName varchar(40)
		,LastName varchar(40)
		,Orders int
		,OrderTot int
	)

INSERT INTO @mtl
(
	FirstName
	,LastName
	,Orders
	,OrderTot
)
SELECT
	p.FirstName
	,p.LastName
	,COUNT(*) NumberOrders
	,SUM(soh.TotalDue) Totals
FROM
	Person.Person p 
JOIN
	Sales.SalesOrderHeader soh
ON p.BusinessEntityID = soh.SalesPersonID
GROUP BY FirstName, LastName

SELECT *
FROM @mtl
ORDER BY Orders DESC
