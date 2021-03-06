/*
	ROW_NUMBER: Returns row numbers as part of the result set
*/

SELECT
	ROW_NUMBER() OVER
		(ORDER BY SalesYTD DESC) AS Row
		,FirstName
		,LastName
		,ROUND(SalesYTD,2,1) AS 'Sales YTD'
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0;
