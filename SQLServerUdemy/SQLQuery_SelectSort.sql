SELECT	[CustomerID]
		,[PersonID]
		,[StoreID]
		,[TerritoryID]
		,[AccountNumber]
		,[rowguid]
		,[ModifiedDate]
FROM [Sales].[Customer] ORDER BY [TerritoryID] ASC, [AccountNumber] DESC