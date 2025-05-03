SELECT  [EmailAddress]
		,Charindex ('@', [EmailAddress]) AS [AtPosition]
		,Right([EmailAddress], 19) AS [Right]
		,Left([EmailAddress], Charindex ('@', [EmailAddress]) - 1) AS [Left]
		,LEN([EmailAddress])
		,SUBSTRING([EmailAddress], Charindex ('@', [EmailAddress]) + 1, Charindex ('.', [EmailAddress]) - Charindex ('@', [EmailAddress]) - 1) AS [Domain]
		,REPLACE([EmailAddress], '.com','.co.uk') AS [EmailRename]
		,REVERSE('abcdefg') AS [Reverse]
  FROM [AdventureWorks2019].[Person].[EmailAddress]
