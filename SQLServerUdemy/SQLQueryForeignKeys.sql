DROP TABLE Patient

CREATE TABLE Patient(
PK_ID INT NOT NULL PRIMARY KEY,
FK_Covid_Variant INT FOREIGN KEY REFERENCES Covid_Variant(PK_ID),
Age INT CHECK (AGE > 0 AND AGE < 120),
Record_Created_Date Date DEFAULT GETDATE()
)

CREATE TABLE Patient(
PK_ID INT NOT NULL PRIMARY KEY,
FK_Covid_Variant INT FOREIGN KEY REFERENCES Covid_Variant(PK_ID),
Age INT CHECK (AGE > 0 AND AGE < 120),
Record_Created_Date Date DEFAULT GETDATE()

CONSTRAINT FK_Patient_Covid_Variant FOREIGN KEY(FK_Covid_Variant) REFERENCES Covid_Variant(PK_ID)
)

ALTER TABLE [dbo].[Patient_Hospital]
ADD CONSTRAINT FK_Patient_Hospital_Hospital FOREIGN KEY (PK_Hospital_ID) REFERENCES [dbo].[Hospital](PK_Hospital_ID)