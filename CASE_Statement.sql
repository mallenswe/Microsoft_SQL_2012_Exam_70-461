/*
	CASE Logic:
*/

--SELECT *
--FROM Sales.SalesOrderHeader

--SELECT SalesOrderNumber, CustomerID, TotalDue,
--	CASE
--		WHEN TotalDue < 2500 THEN 'LOW'
--		WHEN TotalDue > 2500 AND TotalDue < 10000 THEN 'AVG'
--		WHEN TotalDue > 10000 THEN 'HIGH'
--	END as 'Customer Rating'
--FROM Sales.SalesOrderHeader

SELECT
	MONTH(OrderDate) 'Month',
	SUM(
		CASE YEAR(OrderDate) 
			WHEN 2005 THEN 1 ELSE  0 END
		) as 'Orders',
	SUM(
		CASE YEAR(OrderDate)
			WHEN 2005 THEN TotalDue ELSE 0 END
		) as 'Total Value'
FROM
	sales.SalesOrderHeader
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC
