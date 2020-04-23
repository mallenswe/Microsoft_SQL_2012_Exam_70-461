/*
	NTILE: Distributes the returned rows into a specified number of groups
			- Example: NTILE(4) with 316 rows returned into four groups
			- Indicates which quartile the Rate falls into
			- By using NTILE(2), we can see if the Rate is in the top or bottom of the results
*/

SELECT 
	BusinessEntityID
	,Rate
	,NTILE(4) OVER
		(ORDER BY Rate DESC) AS Quartile
FROM HumanResources.EmployeePayHistory

