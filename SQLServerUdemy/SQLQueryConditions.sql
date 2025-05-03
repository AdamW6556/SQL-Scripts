SELECT [OrderDate], [SalesOrderID], [TotalDue]

		,CASE
		      WHEN [TotalDue] < 1000 THEN 'Bronze Product'
			  WHEN [TotalDue] >= 1000 AND [TotalDue] < 2000 THEN 'Silver Product'
			  ELSE 'Gold Product'
		END AS [CASE]
		,IIF([SalesOrderId]<43665, 'Old Product', 'New Product') AS[IIF]

FROM [Sales].[SalesOrderHeader]