/*
	GROUP BY: 
			-Groups a selected set of rows  into a set of summary rows.
			-One row is returned for each group.
			-Every column that is not part of GROUP BY clause must be using an aggregate function so it will return a value
*/

SELECT CountryRegionCode, SUM(SalesYTD)
FROM Sales.SalesTerritory
WHERE SalesYTD > 4000000
GROUP BY CountryRegionCode
