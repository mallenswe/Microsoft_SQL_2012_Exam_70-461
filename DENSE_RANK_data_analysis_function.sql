/*
	DENSE RANK: Ranks the rank of rows within a partition of a result set without any gaps in the ranking, consecutively.
			- Increases Ranking value by One even after a tie value
*/

SELECT TOP(10)
	BusinessEntityID
	,Rate
	,DENSE_RANK() OVER
		(ORDER BY Rate DESC) AS RankByRate
FROM HumanResources.EmployeePayHistory
