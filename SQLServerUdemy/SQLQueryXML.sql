SELECT TOP (1000) 
	   [PK_ID] AS [@Patient_ID]
      ,[FK_Covid_Variant] AS [Covid_Variant_ID]
      ,[Age] AS [Details/Age]
      ,[Record_Created_Date] AS [Details/Record_Created_Date]
  FROM [SQL_Course].[Covid].[Patient]
  FOR XML PATH ('Row'), ROOT('Root')
