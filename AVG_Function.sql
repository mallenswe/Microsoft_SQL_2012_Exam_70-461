/*
	AVG: Creates an Average of all vaules returned from the query, Ignores NULL values
*/

SELECT AVG(LineTotal) 'LineTotal AVG for ID 4'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 4
