-- The GO Command
-- This command is an end of batch command The lines before GO will execute
-- The lines after GO will cause an error because @m is no longer declared
DECLARE @m as int
SET @m = 5
PRINT @m
GO
SET @m = 6
PRINT @m
