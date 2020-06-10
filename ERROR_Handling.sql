/*
	Error Handling:
		TRY:
			- A group of statements are enclosed between BEGIN TRY and END TRY
			- If an error occurs in the TRY block, control is passed to the CATCH block
			- NOTE: The TRY block will catch all execution errors that have a severity error level higher than 10, that do not close the database connection
		CATCH:
			- A groupd of statements are enclosed between BEGIN CATCH and END CATCH
			- If an error occurs in the TRY block, control is passed to the CATCH block
			- If no errors occur in the TRY block, the statements in the CATCH block will not be executed
*/

BEGIN TRY
	SELECT 1/0
END TRY
BEGIN CATCH
	-- NOTE
	-- In the CATCH block we can report the error
SELECT
	ERROR_NUMBER() AS ErrorNumber
	,ERROR_SEVERITY() AS ErrorSeverity
	,ERROR_STATE() AS ErrorState
	,ERROR_PROCEDURE() AS ErrorProcedure
	,ERROR_LINE() AS ErrorLine
	,ERROR_MESSAGE() AS ErrorMessage;
END CATCH

