SELECT 
	[TerritoryID]
	,[SalesPersonID]
	,SUM([TotalDue])
	,MAX([TotalDue])
	,MIN([TotalDue])
	,AVG([TotalDue])
	,COUNT(*) 
   FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
   WHERE [ShipDate] >= '01/01/2013' AND [ShipDate] <= '01/01/2014'
   GROUP BY [TerritoryID], [SalesPersonID] 
   HAVING COUNT(*) > 10 AND AVG([TotalDue]) > 2000
   ORDER BY [TerritoryID], [SalesPersonID]
