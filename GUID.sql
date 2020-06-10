/*
	GUIDs: Globally Unique Identifier - 4byte (128bits) in length
		- Unique across every table, database, server etc.
		- Especially useful in data warehousing
		- UNIQUEIDENTIFIER datatype
		- NEWID() Function
			- Generates a GUID when used with a UNIQUEIDENTIFIER type
		- NEWSEQUENTIALID() Function
			- Generates new sequential IDs
			- Can provide better performance
			- Can also be a security risk, since the next GUID can be guessed
*/

--CREATE TABLE UsingGUIDs
--(
--	ID UNIQUEIDENTIFIER
--	,LastName VARCHAR(40)
--	,FirstName VARCHAR(40)
--)

--INSERT INTO UsingGUIDs
--VALUES
--(NewID(), 'Long', 'Mark'),(NEWID(), 'Jones','Frank')

--SELECT * FROM dbo.UsingGUIDs

--CREATE TABLE DefaultGUIDs
--(
--	ID UNIQUEIDENTIFIER DEFAULT NEWID()
--	,LastName VARCHAR(40)
--	,FirstName VARCHAR(40)
--)

--INSERT INTO DefaultGUIDs
--	(LastName, FirstName)
--VALUES
--	('Smith','John')

--SELECT * FROM DefaultGUIDs

--CREATE TABLE SeqGUID
--(
--	ID UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID()
--	,LastName VARCHAR(40)
--	,FirstName VARCHAR(40)
--)

--INSERT INTO SeqGUID
--	(LastName, FirstName)
--VALUES
--	('Allen','Matthew'), ('Safajou','Parastou'), ('Allen','Adrian'),('Wright','Gage'),('Selesky','Josh')

SELECT *
FROM
	SeqGUID
