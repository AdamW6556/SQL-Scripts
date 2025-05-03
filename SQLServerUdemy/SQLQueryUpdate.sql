SELECT * FROM [Covid].[Covid_Variant]

UPDATE [Covid].[Covid_Variant]
SET [Has_Vacinaiton_Program] = 'no'

UPDATE [Covid].[Patient]
SET [FK_Covid_Variant] = 200,
	[Age] = 75
	WHERE [PK_ID] = 2

UPDATE p
SET  p.[Record_Created_Date] = cv.[Date]
FROM [Covid].[Patient] p INNER JOIN [Covid].[Covid_Variant] cv 
ON p.FK_Covid_Variant = cv.PK_ID