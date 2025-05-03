SELECT 
	p.[PK_ID],
	p.[FK_Covid_Variant],
	p.[Age],
	p.[Record_Created_Date],
	cv.[PK_ID], 
	cv.[Location], 
	cv.[Date], 
	cv.[Num_Sequences], 
	cv.[Variant],
	cv.[Num_Sequences_Total], 
	cv.[Has_Vacinaiton_Program]
	

FROM Covid.Covid_Variant cv INNER JOIN Covid.Patient p 
ON cv.PK_ID = p.FK_Covid_Variant
FOR JSON AUTO;

SELECT 
	
	cv.[PK_ID] AS [VARIANT.PK_ID], 
	cv.[Location] AS [VARIANT.Location], 
	cv.[Date] AS [VARIANT.Date], 
	cv.[Num_Sequences] AS [VARIANT.Num_Sequences], 
	cv.[Variant] AS [VARIANT.Variant],
	cv.[Num_Sequences_Total] AS [VARIANT.Num_Sequences_Total], 
	cv.[Has_Vacinaiton_Program] AS [VARIANT.Has_Vacinaiton_Program],
	p.[PK_ID] AS [PATIENT.PK_ID],
	p.[FK_Covid_Variant] AS [PATIENT.FK_Covid_Variant],
	p.[Age] AS [PATIENT.Age],
	p.[Record_Created_Date] AS [PATIENT.Record_Created_Date]
	

FROM Covid.Covid_Variant cv INNER JOIN Covid.Patient p 
ON cv.PK_ID = p.FK_Covid_Variant
FOR JSON PATH, ROOT('Root_Name'), INCLUDE_NULL_VALUES;