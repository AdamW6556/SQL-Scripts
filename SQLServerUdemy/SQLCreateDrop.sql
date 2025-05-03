-- CREATE DATABASE Sql_Course
-- DROP DATABASE Sql_Course

-- SELECT * from sys.databases

DECLARE @DB_Name VARCHAR(50)
SET @DB_Name = 'SQL Course'

IF NOT EXISTS (SELECT * FROM sys.databases where name = @DB_Name)

BEGIN
	CREATE DATABASE SQL_Course
END

DROP DATABASE SQL_Course