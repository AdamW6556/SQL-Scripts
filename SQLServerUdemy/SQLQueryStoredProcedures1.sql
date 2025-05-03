CREATE PROCEDURE Covid.usp_get_covid_patient
AS 
BEGIN

SELECT * FROM
[Covid].[Patient]

END

EXEC Covid.usp_get_covid_patient

CREATE PROCEDURE Covid.usp_get_specific_covid_patient
	@PK_ID INT,
	@Age INT
AS 
BEGIN
	SELECT * FROM
	[Covid].[Patient] p
	WHERE p.PK_ID = @PK_ID AND p.Age = @Age
END

EXEC Covid.usp_get_specific_covid_patient 1,56

IF OBJECT_ID('Covid.usp_get_covid_patient', 'p') IS NOT NULL
	DROP PROCEDURE Covid.usp_get_covid_patient
GO

DROP PROCEDURE Covid.usp_get_specific_covid_patient