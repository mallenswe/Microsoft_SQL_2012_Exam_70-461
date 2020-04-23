/*
	SUM: Aggregate function that creates a total of all the values returned by the query
*/
SELECT DISTINCT SpecialOfferID
FROM Sales.SalesOrderDetail
ORDER BY SpecialOfferID

SELECT SUM(LineTotal) 'LineTotal SUM'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 4
