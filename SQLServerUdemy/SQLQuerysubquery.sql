SELECT [ProductID]
      ,[LocationID]
      ,[Shelf]
      ,[Bin]
      ,[Quantity]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductInventory]
  WHERE [LocationID] IN (50,6) ORDER BY [LocationID]

SELECT [LocationID]
FROM [AdventureWorks2019].[Production].[Location] 
WHERE [Availability] = 120

SELECT [ProductID]
      ,[LocationID]
      ,[Shelf]
      ,[Bin]
      ,[Quantity]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Production].[ProductInventory]
  WHERE [LocationID] IN (
					SELECT [LocationID]
					FROM [AdventureWorks2019].[Production].[Location] 
					WHERE [Availability] = 120
  )
  ORDER BY [LocationID]