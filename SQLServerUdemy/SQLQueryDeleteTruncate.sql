SELECT *
INTO 
[Covid].[Covid_Variant_Copy]
FROM [Covid].[Covid_Variant]

SELECT * FROM [Covid].[Covid_Variant_Copy]

SET STATISTICS TIME ON;
DELETE FROM [Covid].[Covid_Variant_Copy]
SET STATISTICS TIME OFF

DROP TABLE [Covid].[Covid_Variant_Copy]

DELETE FROM [Covid].[Covid_Variant_Copy] WHERE Num_Sequences_Total > 2

SET STATISTICS TIME ON;
TRUNCATE TABLE [Covid].[Covid_Variant_Copy]
SET STATISTICS TIME OFF