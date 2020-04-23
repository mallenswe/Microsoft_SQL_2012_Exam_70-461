/*
	RANKING: Returns a ranking value for each row
			- If two or more rows tie for a rank, each receive the same rank
				- If the first two rows tie for a ranking of 1, the next ranking value will be 3
				- Rank does not always return consecutive integers
			- Results can be divided into partitions
			- Each Partition can have it's own ranking values
*/

--SELECT 
--	BusinessEntityID
--	,Rate
--	,RANK() OVER (ORDER BY Rate DESC) AS RankByRate
--FROM HumanResources.EmployeePayHistory
--ORDER BY BusinessEntityID


--Rank within a partition
--NOTE that this query is partitioned on LocationID...
--Ranking values start over at 1 for every new LocationID

SELECT
	i.ProductID
	,p.Name
	,i.LocationID
	,i.Quantity
	,RANK() OVER
		(PARTITION BY i.LocationID
			ORDER BY i.Quantity DESC
		) AS 'Rank'
FROM Production.ProductInventory AS i
INNER JOIN Production.Product AS p
		ON i.ProductID = p.ProductID
WHERE i.LocationID BETWEEN 3 AND 4
ORDER BY i.LocationID

