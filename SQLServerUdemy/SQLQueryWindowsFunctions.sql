SELECT [SalesOrderID]
      ,[SalesPersonID]      
      ,[TotalDue] 
	  ,COUNT(*) OVER() AS [Whole table count]
	  ,SUM([TotalDue]) OVER (PARTITION BY [SalesPersonID]) AS [Sum]
	  ,AVG([TotalDue]) OVER (PARTITION BY [SalesPersonID]) AS [AVG]
	  ,MAX([TotalDue]) OVER (PARTITION BY [SalesPersonID]) AS [MAX]
	  ,MIN([TotalDue]) OVER (PARTITION BY [SalesPersonID]) AS [MIN]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  WHERE [SalesPersonID] IS NOT NULL ORDER BY [SalesOrderID],[SalesPersonID]  


  SELECT 
		[SalesPersonID]    
		,[OrderDate]
		,ROW_NUMBER() OVER (PARTITION BY [SalesPersonID] ORDER BY [OrderDate])
		,RANK() OVER (PARTITION BY [SalesPersonID] ORDER BY [OrderDate])
		,DENSE_RANK() OVER (PARTITION BY [SalesPersonID] ORDER BY [OrderDate])
	  
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  WHERE [SalesPersonID] IS NOT NULL ORDER BY [SalesOrderID],[SalesPersonID] 
