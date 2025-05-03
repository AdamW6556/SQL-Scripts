CREATE PROCEDURE Covid.usp_insert_patient
	@Covid_Variant_Name VARCHAR(50) = 'Alpha',
	@Covid_Variant_Country VARCHAR(50),
	@Age INT,
	@Inserted_Pateint_ID INT OUTPUT
AS
	SET NOCOUNT ON

	-- Get Covid Variant ID
	DECLARE @Covid_Variant_PK_ID AS INT
	
	SELECT TOP 1 @Covid_Variant_PK_ID = [PK_ID]
	FROM [Covid].[Covid_Variant]
	WHERE [Variant] = @Covid_Variant_Name AND [Location] = @Covid_Variant_Country
	ORDER BY [DATE] DESC

	-- Get next patient ID

	DECLARE @Patient_Next_PK AS INT
	SELECT TOP 1 @Patient_Next_PK = [PK_ID] + 1
	FROM [Covid].[Patient]
	ORDER BY [PK_ID] DESC


	-- Insert new patient record

	INSERT INTO [Covid].[Patient](
		[PK_ID],
		[FK_Covid_Variant],
		[Age],
		[Record_Created_Date]
	) VALUES(
	@Patient_Next_PK,
	@Covid_Variant_PK_ID,
	@Age,
	GETDATE()
	)

	-- Set output to used variable
	SET @Inserted_Pateint_ID = @Patient_Next_PK --@@IDENTITY @Patient_Next_PK

	--Return integer code when procedure is correct while executing
	RETURN(1)

DECLARE @Returned_Patient_ID INT
DECLARE @Status INT

EXECUTE @Status = Covid.usp_insert_patient
@Covid_Variant_Name = 'Beta',
@Covid_Variant_Country = 'New Country',
@Age = 75,
@Inserted_Pateint_ID = @Returned_Patient_ID OUTPUT

PRINT @Returned_Patient_ID
PRINT @Status
					