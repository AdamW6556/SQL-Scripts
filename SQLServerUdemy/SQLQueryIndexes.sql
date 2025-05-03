SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'Patient'

ALTER TABLE Patient
DROP CONSTRAINT PK__Patient__F4A24BC2E36CA1BD


select Age, Record_Created_Date from Patient 
where Age = 35

CREATE CLUSTERED INDEX IX_Clustered_Ex ON Patient(PK_ID)

CREATE NONCLUSTERED INDEX IX_NonClustered_Age ON Patient(Age)

CREATE NONCLUSTERED INDEX IX_NonClustered_Age_Inc ON Patient(Age)
INCLUDE(Record_Created_Date)

DROP INDEX IX_NonClustered_Age ON Patient