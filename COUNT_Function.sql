/*
	COUNT: Counts the number of occurrences of values returned by the query
*/

SELECT 
	COUNT(LineTotal) 'LineTotal COUNT for ID 4'
	,AVG(LineTotal) 'Average Line Total'
	,SUM(LineTotal) 'Sum Line Total'
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 4
