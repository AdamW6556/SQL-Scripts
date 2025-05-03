
CREATE TABLE dbo.Patient_Hospital(
PK_Patient_ID INT NOT NULL,
PK_Hospital_ID INT  NOT NULL,
Global_Rating INT  NOT NULL,
Quality_Rating INT  NOT NULL,
Satisfication Varchar(10),
Constraint CS_Patient_Hospital_Un UNIQUE(PK_Patient_ID, PK_Hospital_ID),
Constraint CS_Patient_Hospital_Ch CHECK(Quality_Rating > 0 AND Quality_Rating <=5 )
)