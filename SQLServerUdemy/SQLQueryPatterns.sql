SELECT [ProductID]
	  ,[Name]
      ,[ProductNumber]
FROM [AdventureWorks2019].[Production].[Product]
WHERE   -- [NAME] LIKE '%LOCK%'
		-- [NAME] LIKE 'Internal Lock Washer _'
		-- [NAME] LIKE '[a-c]%'
		-- [NAME] LIKE '[ft]%'
		-- [NAME] NOT LIKE '%[1-9]%'
		   [NAME] NOT LIKE '[^WB]%'
