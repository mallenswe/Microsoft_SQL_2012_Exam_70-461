/*
	UPDATE TRIGGER
*/

--CREATE TRIGGER ModEx
--ON TrigEx
--FOR UPDATE
--AS
--PRINT 'ATTENTION!'
--PRINT 'A row was modified in the TrigEx table...'
--SELECT 'DELETED: The original data was: ', *
--FROM DELETED
--SELECT 'INSERTED: The new data is: ', *
--FROM INSERTED
--SELECT * FROM TrigEx

SELECT * FROM TrigEx
UPDATE TrigEx
SET LastName='Longly'
WHERE FirstName='Mark' AND LastName = 'Long'
