
-- /////     OUTPUT parameter     \\\\\

--CREATE PROC mlOut
--	@lastname varchar(40)
--	,@numrows int = 0 OUTPUT
--AS
--	SELECT
--		LastName
--	FROM
--		Person.Person
--	WHERE
--		LastName LIKE @lastname
--	SET @numrows = @@ROWCOUNT

DECLARE @retrows int
EXEC mlOut 'E%', @numrows = @retrows OUTPUT
SELECT @retrows AS 'Rows'
