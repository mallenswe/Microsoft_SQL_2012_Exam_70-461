/*
	Triggers: A stored procedure that executes automatically
		- Whenever an UPDATE, INSERT, or DELETE query is executed on a table
		- Useful When:
			- You need to verify, modify, validate, or control data modifications
			- You need to enforce business rules when data is modified
			- You need to extend the integrity checking logic of constraints, rules, etc.
			- You need to automate specific processing
					- Detect a reorder point when a stock level reaches a certain threshold
					- Generate an email based on data values
		- Two Types
			- AFTER trigger
				-Fired after all statements in the triggering SQL statement has executed successfully
					- Fires AFTER data modifications have been made to the table
			- INSTEAD OF
				- Fired INSTEAD of the triggering SQL statement
					- Fires BEFORE data modifications have been made to the table
		- CREATE TRIGGER
		- DROP TRIGGER
		- DISABLE TRIGGER or ALTER TABLE
		- ENABLE TRIGGER or ALTER TABLE
*/

--CREATE TABLE TrigEx (
--	LastName VARCHAR(50),
--	FirstName VARCHAR(50)
--)

--CREATE TRIGGER Notify
--	ON TrigEx
--FOR INSERT
--	AS
--	PRINT 'ATTENTION!'
--	PRINT 'A row was inserted into the TrigEx table...'
--SELECT 'Then inserted data was: ', * 
--FROM INSERTED
--SELECT * FROM TrigEx

INSERT INTO TrigEx
VALUES
('James','Jack'),('James','Frank'),('Long','Mark')
