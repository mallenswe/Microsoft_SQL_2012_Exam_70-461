/*
	Common Table Expressions (CTE): A more readable form of a derived table
			- It is declared once
			- Used many times in a query or batch
*/

-- Simple derived table example
--SELECT *
--FROM 
--(
--	SELECT
--		LastName
--		,Firstname
--	FROM Person.Person
--) AS DPerson
--WHERE LastName LIKE 'I%'


-- /////     CTE     \\\\\
WITH DPerson
(
	LastName
	,FirstName
) 
AS
(
	SELECT
		LastName
		,FirstName
	FROM
		Person.Person
)
SELECT
	LastName
	,FirstName
FROM DPerson
WHERE LastName LIKE 'I%'
