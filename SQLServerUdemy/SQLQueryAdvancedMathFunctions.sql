SELECT [OrderQty],[UnitPrice], [LineTotal],
	ABS(-20) AS [ABS],
	CEILING([UnitPrice]) AS [Ceiling],
	FLOOR([UnitPrice]) AS [Floor],
	POWER(10, 2) AS [Power],
	ROUND([UnitPrice], 2) AS [Round]
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
