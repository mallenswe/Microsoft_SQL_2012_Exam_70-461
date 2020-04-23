/*
	CROSS JOIN: Includes one row for each possible pairing of rows from each table
			- Returns all rows from both tables in every possible combination
*/

--SELECT DISTINCT TOP 5
--	FirstName
--	,LastName
--FROM Person.Person

--SELECT DISTINCT TOP 5 PhoneNumber
--FROM Person.PersonPhone

--SELECT DISTINCT TOP 5
--	FirstName
--	,LastName
--INTO PersonCross
--FROM Person.Person

--SELECT DISTINCT TOP 5
--	PhoneNumber
--INTO PhoneCross
--FROM Person.PersonPhone

--SELECT *
--FROM PersonCross
--SELECT *
--FROM PhoneCross

SELECT
	p.FirstName
	,p.LastName
	,ph.PhoneNumber
FROM
	PersonCross p
CROSS JOIN
	PhoneCross ph
