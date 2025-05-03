SELECT 
      CAST([ActualCost] AS INT) AS [INT]
	  ,CAST([ActualCost] AS DECIMAL(18,2)) AS [DECIMAL]
	  ,CAST([ModifiedDate] AS DATETIME2) AS [DATETIME2]
      ,CAST([ModifiedDate] AS VARCHAR(20)) AS [VARCHAR]
	  ,CAST([ActualCost] AS NCHAR(20)) AS [NCHAR]

	  ,CONVERT(VARCHAR(10), [ModifiedDate], 103) AS [UKDate]
	  ,CONVERT(VARCHAR(10), [ModifiedDate], 101) AS [UKDate]
	  ,CONVERT(VARCHAR(116), [ActualCost], 1) AS [UKDate]


  FROM [AdventureWorks2019].[Production].[TransactionHistory]


  SELECT 'ABC' + CAST([ProductId] AS VARCHAR(10)) FROM [AdventureWorks2019].[Production].[TransactionHistory]


  SELECT DATEADD(MONTH, 1, '10/20/2030')
  ,CONVERT(DATETIME,'10/30/2030', 101) FROM [Production].[TransactionHistory]