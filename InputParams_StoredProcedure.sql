/*
	Stored Procedure: Code that is executed when called by a particular name
			- Similar to procedures or subroutines in other programming languages
			- Can accept input parameters
			- Can return output parameters to the calling procedure or batch
			- Contain programming statements
			- Retun a status value indicating success or failuse (and the reason)
			- No defined maximum size
			
			- Four Types:
				- User-Defined: Created in User-Defined database or all system databases except the Resource Database
				- Temporary: Stored in TempDB, can be local or global. 
					- Local: Prefixed with #, are visible to current user
					- Global: Prefixed with ##, visiable to any user
				- System: Included in SQL Server, begin with sp_
				- Extended user-defined: Used to create external routines in languages like C
					- Implemented as DLLs that SQL Server can dynamically load and run
					- Will be removed in a future version of SQL Server
						- Do not use these in new development
*/

-- /////     Simple Stored Procedure     \\\\\

--CREATE PROC GetPhone
--AS
--SELECT
--	p.LastName + ' ' + p.FirstName [Name]
--	,pp.PhoneNumber
--FROM Person.Person p
--JOIN Person.PersonPhone pp 
--ON p.BusinessEntityID = pp.BusinessEntityID
--WHERE LastName = 'Abel'

--GetPhone

-- /////     ALTER, adding input parameters     \\\\\
--ALTER PROC GetPhone
--@lastname varchar(40) = 'Abel'
--AS
--SELECT
--	p.LastName + ' ' + p.FirstName [Name]
--	,pp.PhoneNumber
--FROM Person.Person p
--JOIN Person.PersonPhone pp 
--ON p.BusinessEntityID = pp.BusinessEntityID
--WHERE LastName LIKE @lastname

--GetPhone 'Ab%'


-- /////      ALTER, multiple input parameters     \\\\\
--ALTER PROC GetPhone
--@lastname varchar(40) = 'Abel',
--@firstname varchar(40) = 'Catherine'
--AS
--SELECT
--	p.LastName + ' ' + p.FirstName [Name]
--	,pp.PhoneNumber
--FROM Person.Person p
--JOIN Person.PersonPhone pp 
--ON p.BusinessEntityID = pp.BusinessEntityID
--WHERE 
--	LastName LIKE @lastname
--	AND FirstName LIKE @firstname

--GetPhone 'A%','C%'
