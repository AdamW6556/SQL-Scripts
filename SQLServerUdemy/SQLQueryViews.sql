CREATE VIEW [Covid].[Covid_Patient]
AS

SELECT p.[PK_ID],
	   p.[FK_Covid_Variant],
	   p.[Age] + 10 AS [Adjusted_Age],
	   cv.[Location]
	   FROM Covid.Patient p
INNER JOIN [Covid].[Covid_Variant] cv ON p.FK_Covid_Variant = cv.PK_ID

SELECT * FROM [Covid].[Covid_Patient]



ALTER VIEW [Covid].[Covid_Patient]
AS
SELECT p.[PK_ID],
	   p.[FK_Covid_Variant],
	   p.[Age] + 10 AS [Adjusted_Age],
	   cv.[Location],
	   cv.Variant
	   FROM Covid.Patient p
INNER JOIN [Covid].[Covid_Variant] cv ON p.FK_Covid_Variant = cv.PK_ID

SELECT * FROM [Covid].[Covid_Patient]