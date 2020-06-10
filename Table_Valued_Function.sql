/*
	Table Valued Function
*/

--CREATE FUNCTION dbo.PhoneNbrs()
--RETURNS TABLE
--AS
--RETURN
--	SELECT
--		p.FirstName + ' ' + p.LastName 'Name',
--		pp.PhoneNumber
--	FROM
--		Person.Person p
--	JOIN
--		Person.PersonPhone pp
--	ON
--		p.BusinessEntityID = pp.BusinessEntityID

SELECT * FROM PhoneNbrs()
