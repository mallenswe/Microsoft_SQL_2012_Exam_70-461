/*
	Derived Table: A virtual table created and used within the scope of the query
			- Used in place of a physical table in a query
			- Virtual table created using a SELECT statement and given an alias using AS clause
			- The table can be used in the query and is discarded when the query completes
			- Can be thought of as a temporary view
		Advantages:
			- Easy to create and user without DBA intervention
			- Fast easy data organization for more complex data needs
		Disadvantages:
			- Table is constructed every time the query is run
			- Does not utilize indexes
			- Large derived tables can create performance issues
*/

SELECT
	p.FirstName + ' ' + p.LastName Salesperson
	,soh.Subtotal
	,soh.Freight
	,soh.TotalDue
FROM Person.Person p
JOIN
	(
		SELECT 
			SalesPersonID
			,Subtotal
			,Freight
			,TotalDue
		FROM 
			Sales.SalesOrderHeader
	) soh
ON p.BusinessEntityID = soh.SalesPersonID
ORDER BY soh.TotalDue DESC

