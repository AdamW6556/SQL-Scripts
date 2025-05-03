ALTER TABLE Patient_Hospital WITH NOCHECK
ADD CONSTRAINT CS_Global_Ranking_Un UNIQUE(Global_Ranking)

ALTER TABLE Patient_Hospital WITH NOCHECK
ADD CONSTRAINT CS_Global_Rnking_Def Default 'Happy' FOR Satisfaction WITH VALUES