---------------------------------------------
-- Hospital Insert
INSERT INTO [Covid].[Hospital](Name)
VALUES
('London'),
('New York'),
('Sydney')

-- BULK INSERT 

BULK INSERT [Covid].[Covid_Variant] FROM 'C:\Users\adwoj\Downloads\Zeszyt1.xlsx'
WITH (FORMAT = 'CSV')
---------------------------------------------
-- Patient Insert

INSERT INTO [Covid].[Patient](
[PK_ID],
[FK_Covid_Variant],
[Age],
[Record_Created_Date]
) VALUES
(1, 5 ,56, '01/01/2021'),
(2, 100 ,71, '01/01/2021'),
(3, 30000 ,85, '01/01/2021'),
(4, 3452 ,67, '01/01/2021'),
(5, 45 ,95, '01/01/2021'),
(6, 7 ,35, '01/01/2021')

---------------------------------------------
-- Patient_Hospital Insert
INSERT INTO [Covid].[Patient_Hospital](
[PK_Patient_ID],
[PK_Hospital_ID],
[Global_Ranking],
[Quality_Rating],
[Satisfaction]
) VALUES
(1,1,1,1,3),
(2,2,2,3,3),
(3,3,3,5,4),
(4,3,4,3,5),
(4,2,5,5,3),
(5,2,6,4,1),
(6,1,7,4,2)

