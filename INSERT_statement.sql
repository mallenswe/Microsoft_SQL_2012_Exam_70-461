/*
	INSERT: Primary method for adding data to a table
			- INSERT VALUES - Positional, EX: (FirstName, LastName) VALUES ('Matthew','Allen')
			- INSERT SELECT
			- INSERT EXEC
*/

--SELECT *
--FROM Production.UnitMeasure

-- /////     INSERT VALUES     \\\\\ --
--INSERT INTO Production.UnitMeasure
--	(UnitMeasureCode, Name, ModifiedDate)
--VALUES
--	('IN2', 'Square inch', '20080414'),
--	('BRL','Barrel','20080414')

-- /////     INSERT SELECT Table Create     \\\\\ --
--CREATE TABLE dbo.EmployeeSales
--	(
--		DataSource varchar(20) NOT NULL
--		,BusinessEntityID varchar(11) NOT NULL
--		,LastName varchar(40) NOT NULL
--		,SalesDollars money NOT NULL
--	);

-- /////     INSERT SELECT statement     \\\\\ --
--INSERT INTO dbo.EmployeeSales
--SELECT 
--	'SELECT'
--	,sp.BusinessEntityID
--	,c.LastName
--	,sp.SalesYTD
--FROM 
--	Sales.SalesPerson AS sp
--INNER JOIN 
--	Person.Person AS c
--ON sp.BusinessEntityID = c.BusinessEntityID
--WHERE sp.BusinessEntityID LIKE '2%'
--ORDER BY 
--	sp.BusinessEntityID
--	,c.LastName

--SELECT *
--FROM EmployeeSales


-- /////     INSERT EXEC Stored Procedure     \\\\\ --
--CREATE PROCEDURE dbo.uspGetEmployeeSales
--AS
--SET NOCOUNT ON;
--SELECT
--	'PROCEDURE'
--	,sp.BusinessEntityID
--	,c.LastName
--	,sp.SalesYTD
--FROM
--	Sales.SalesPerson AS sp
--INNER JOIN
--	Person.Person AS c
--ON sp.BusinessEntityID = c.BusinessEntityID
--WHERE sp.BusinessEntityID LIKE '2%'
--ORDER BY
--	sp.BusinessEntityID
--	,c.LastName;

-- /////     INSERT EXEC statement     \\\\\ --
INSERT INTO EmployeeSales
EXEC dbo.uspGetEmployeeSales;

