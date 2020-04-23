/*
	INNER JOIN: Displays only the rows that have a match in both joined tables
			- Returns requested columns from either table when data in both tables equal some specific conditon
				- Usually an equality condition between the Primary and Foreign Keys
*/

--SELECT TOP 1 *
--FROM Person.Person

--SELECT TOP 1 *
--FROM Person.PersonPhone

SELECT
	p.FirstName
	,p.LastName
	,ph.PhoneNumber
FROM Person.Person p
INNER JOIN
	Person.PersonPhone ph
ON
	p.BusinessEntityID = ph.BusinessEntityID

--SELECT        Person.Person.BusinessEntityID, Person.Person.FirstName, Person.Person.LastName, Person.PersonPhone.PhoneNumber
--FROM            Person.Person INNER JOIN
--                         Person.PersonPhone ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID