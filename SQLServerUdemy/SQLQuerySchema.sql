USE Sql_Course

GO 

DECLARE @DB_Schema VARCHAR(50)
SET @DB_Schema = 'Example_Schema'
IF NOT EXISTS(SELECT * FROM sys.schemas WHERE name=@DB_Schema)

BEGIN
	EXEC('Create Schema ' + @DB_Schema)


END