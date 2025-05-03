CREATE TABLE Covid.Pateint_Audit
(
	Audit_PK_ID INT IDENTITY(1,1) NOT NULL,
	Patient_PK_ID INT NOT NULL,
	[FK_Covid_Variant] INT NULL,
	[Age] INT NULL,
	[Record_Created_Date] DATE NULL,
	Audit_Date DATETIME DEFAULT GETDATE() NOT NULL,
	[User] VARCHAR(200) DEFAULT SUSER_NAME() NOT NULL
)

CREATE TRIGGER Covid.Tr_Patient_Audit ON [Covid].[Patient]
AFTER INSERT, UPDATE
AS
BEGIN

	SET NOCOUNT ON
	PRINT 'Patient data inserted or updated'
	INSERT INTO Covid.Pateint_Audit
	(
		Audit_PK_ID,
		Patient_PK_ID,
		[FK_Covid_Variant],
		[Age],
		[Record_Created_Date]
	)
	SELECT
	[PK_ID],
	[FK_Covid_Variant],
	[Age],
	[Record_Created_Date]
	FROM INSERTED
END

INSERT INTO [Covid].[Patient]
(
[PK_ID],
[FK_Covid_Variant],
[Age],
[Record_Created_Date]
)
VALUES(100, 20, 78, GETDATE())

UPDATE [Covid].[Patient]
SET [FK_Covid_Variant] = 40, [Age] = 55 WHERE [PK_ID] = 100