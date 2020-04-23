/*
	OUTER JOIN: Includes row even if they do not have related rows in a joined table
				- LEFT OUTER JOIN: All rows in the left table; only the matches in the right
				- RIGHT OUTER JOIN: All rows in the right table; only the matches in the left
				- FULL OUTER JOIN: All rows in all joined tables included
*/

--SELECT TOP 1 *
--FROM Sales.Customer

--SELECT TOP 1 *
--FROM Sales.SalesOrderHeader

SELECT
	c.CustomerID
	,soh.OrderDate
FROM
	Sales.Customer c
LEFT OUTER JOIN
	Sales.SalesOrderHeader soh
ON c.CustomerID = soh.CustomerID
