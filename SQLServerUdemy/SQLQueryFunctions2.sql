CREATE FUNCTION Covid.UDF_Inline_Covid_Patient
(
	@Location VARCHAR(100),
)

RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN
(
	SELECT p.[Age], p.[Record_Created_Date], cv.[Location], cv.[Variant]
	FROM 
	[Covid].[Patient] p INNER JOIN
	[Covid].[Covid_Variant] cv ON p.FK_Covid_Variant = cv.PK_ID

	WHERE cv.[Location] = @Location

)

SELECT * FROM Covid.UDF_Inline_Covid_Patient('Angola')



CREATE FUNCTION Covid.UDF_Multiline_Covid_Patient
(
	@Location VARCHAR(100),
	@Variant VARCHAR(100)
)

RETURNS @Rurtun_ Table TABLE(
	Age INT,
	Record_Created_Date Date,
	[Location] VARCHAR(50),
	Variant VARCHAR(200),
	Match_Type VARCHAR(20)
)
WITH SCHEMABINDING
BEGIN

INSERT INTO @Rurtun_Table
	SELECT p.[Age], p.[Record_Created_Date], cv.[Location], cv.[Variant], 'location' AS Match_Type
	FROM 
	[Covid].[Patient] p INNER JOIN
	[Covid].[Covid_Variant] cv ON p.FK_Covid_Variant = cv.PK_ID
	WHERE cv.[Location] = @Location

	INSERT INTO @Rurtun_Table
	SELECT p.[Age], p.[Record_Created_Date], cv.[Location], cv.[Variant], 'Variant' AS Match_Type
	FROM 
	[Covid].[Patient] p INNER JOIN
	[Covid].[Covid_Variant] cv ON p.FK_Covid_Variant = cv.PK_ID
	WHERE cv.Variant = @Variant

END

SELECT * FROM Covid.UDF_Multiline_Covid_Patient('Angola', 'Variant1')