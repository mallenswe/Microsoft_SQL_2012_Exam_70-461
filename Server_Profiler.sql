/*
	Server Profiler
*/

SELECT
	P.LastName
	,P.FirstName
	,PP.PhoneNumber
FROM
	Person.Person P
JOIN
	Person.PersonPhone PP
ON
	P.BusinessEntityID = PP.BusinessEntityID

SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
