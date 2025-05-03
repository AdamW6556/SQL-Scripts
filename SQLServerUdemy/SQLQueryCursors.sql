CREATE VIEW Covid.Delete1
AS
	SELECT 1 AS Col1

CREATE VIEW Covid.Delete2
AS
	SELECT 1 AS Col1
GO

CREATE VIEW Covid.Delete3
AS
	SELECT 1 AS Col1

	SELECT OBJECT_SCHEMA_NAME(V.object_id) AS SCHEMA_NAME,
	v.Name 
	FROM sys.views AS V 
	WHERE V.name LIKE '%DELETE%'

DECLARE 
@Schema_Name VARCHAR(50), 
@Name VARCHAR(50), 
@DynamicSQL VARCHAR(500)

DECLARE My_Cursor CURSOR FOR

SELECT OBJECT_SCHEMA_NAME(V.object_id) AS SCHEMA_NAME,
	v.Name 
	FROM sys.views AS V 
	WHERE V.name LIKE '%DELETE%'

OPEN My_Cursor

FETCH NECT FROM My_Cursor
INTO @Schema_Name, @Name

WHILE @@FETCH_STATUS = 0

BEGIN 
	--PRINT @Schema_Name
	--PRINT @Name

	SET @DynamicSQL = 'DROP VIEW: ' + @Schema_Name + '.' + @Name
	EXEC @DynamicSQL

	PRINT @DynamicSQL

	FETCH NECT FROM My_Cursor
	INTO @Schema_Name, @Name
END

CLOSE My_Cursor
DEALLOCATE My_Cursor