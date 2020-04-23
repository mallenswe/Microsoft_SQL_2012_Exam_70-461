/*
	HAVING: Like the WHERE clause for GROUP BY
*/

SELECT CountryRegionCode, SUM(SalesYTD) 'Totals'
FROM Sales.SalesTerritory
WHERE SalesYTD > 4000000
GROUP BY CountryRegionCode
HAVING SUM(SalesYTD) > 6000000
