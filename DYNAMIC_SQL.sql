/* 
	Dynamic SQL: 
		- A programming technique that allows a query to be handled by the compiler in a different manner
		- It allows variables to be used for many literals that simply cannot be done using standart form T-SQL
		- It causes the T-SQL statement to be built dynamically at runtime
*/

--SELECT COUNT(*)
--FROM Person.Person

DECLARE @tbl VARCHAR(50)
SET @tbl='Person.Person'
EXEC ('SELECT COUNT(*) FROM ' + @tbl)

--CREATE PROC CountRows
--@tbl VARCHAR(50)
--AS
--EXEC('SELECT COUNT(*) FROM ' + @tbl)

EXEC CountRows 'Person.Person'
