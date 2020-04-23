/*
	ROW_NUMBER, NTILE, RANK, DENSE_RANK all in the same query
	- Change SalesYTD in each of the Ranking Types to LastName
	- NOTE: Change one at a time, and change it back to SalesYTD before changing another
*/

SELECT
	ROW_NUMBER() OVER (ORDER BY SalesYTD DESC) AS Row
	,NTILE(4) OVER (ORDER BY SalesYTD DESC) AS Quartile
	,RANK() OVER (ORDER BY SalesYTD DESC) AS 'Rank'
	,DENSE_RANK() OVER (ORDER BY SalesYTD DESC) AS DenseRank
	,FirstName
	,LastName
	,ROUND(SalesYTD, 2, 1) AS 'Sales YTD'
FROM Sales.vSalesPerson
WHERE TerritoryName IS NOT NULL AND SalesYTD <> 0;
