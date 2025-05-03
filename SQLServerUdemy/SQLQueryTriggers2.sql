CREATE TABLE Covid.DDL_Audit
(
	PK_ID INT IDENTITY(1,1) PRIMARY KEY,
	[Event] XML NOT NULL,
	Audit_Date DATETIME NOT NULL,
	Changed_BY NVARCHAR(128) NOT NULL
)

CREATE TRIGGER [Tr_DDL_Audit]
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE, CREATE_VIEW, ALTER_VIEW, DROP_VIEW

AS
BEGIN
	SET NOCOUNT ON;

	PRINT 'DDL Trigger'

	INSERT INTO Covid.DDL_Audit
	(
		[Event],
		Audit_Date,
		Changed_BY
	)
	VALUES
	(
		EVENTDATA(),
		GETDATE(),
		USER
	);

END;

CREATE VIEW Covid.TriggerTest
AS
	SELECT 1 AS Col1

DROP VIEW Covid.TriggerTest

SELECT * FROM sys.trigger_events AS T INNER JOIN sys.triggers AS TT 
ON TT.object_id = T.object_id

DROP TRIGGER [Tr_DDL_Audit] ON DATABASE