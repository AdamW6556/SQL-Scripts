CREATE TABLE Course(
[A1] INT UNIQUE NOT NULL,
Age INT CHECK(Age >0 AND Age < 120),
[B1] VARCHAR(50),
[C1] Date DEFAULT GETdATE()
)

ALTER TABLE dbo.Covid_Variant
ADD [Variant] VARCHAR(50),
[Num_sequences_total] DECIMAL(18,0),
[Has_Vacination_Program] CHAR(3),
[Impact] INT