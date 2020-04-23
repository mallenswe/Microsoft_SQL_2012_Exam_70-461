/*
	SYNONYMS: Provides alternate names for database objects. Names can be shorter and easier to remember
			- Tables
			- Views
			- Stored Procedures
			- Functions
*/

--SELECT *
--INTO Test100
--FROM HumanResources.Employee

--CREATE SYNONYM MLTable
--FOR dbo.Test100

--SELECT *
--FROM Test100

--SELECT *
--FROM MLTable

--EXEC sp_rename 'Test100', 'Test200';

--DROP SYNONYM MLTable

--CREATE SYNONYM MLTable
--FOR dbo.Test200
