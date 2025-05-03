SELECT [BusinessEntityID]
      ,[PersonID]
      ,[ContactTypeID]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[BusinessEntityContact]
  WHERE [ContactTypeID] IN (SELECT [ContactTypeID] FROM [Person].[ContactType] WHERE [Name] like 'A%')

  SELECT [ProductID], [Name], (
  SELECT COUNT(*) FROM 
  [Production].[WorkOrder] wo WHERE
  wo.[ProductID] = p.[ProductId]) AS [WorkOrderCount] from [Production].[Product] p


  SELECT * FROM(SELECT [LocationID], [Name], [CostRate] FROM [Production].[Location])