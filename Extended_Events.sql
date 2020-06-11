/*
	Extended Events
		- A Very Lightweight performance monitoring system
			- Very similar to SQL Profiler
*/

SELECT
	P.LastName
	,P.FirstName
	,PP.PhoneNumber
FROM
	Person.Person P
JOIN
	Person.PersonPhone PP
ON P.BusinessEntityID = PP.BusinessEntityID
