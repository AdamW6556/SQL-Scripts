CREATE TABLE [Hospital](
PK_Hospital_ID INT NOT NULL IDentity(1,1) PRIMARY KEY,
Name Varchar(50),
)

DROP TABLE IF EXISTS [Patient_Hospital]
CREATE TABLE [dbo].[Patient_Hospital](
	[PK_Patient_ID] [int] NOT NULL,
	[PK_Hospital_ID] [int] NOT NULL,
	[Global_Rating] [int] NOT NULL,
	[Quality_Rating] [int] NOT NULL,
	[Satisfication] [varchar](10) NULL,
	CONSTRAINT [CS_Compound_Key] PRIMARY KEY([PK_Patient_ID], [PK_Hospital_ID]) 
) 



