SELECT [CustomerID], 'Customer' AS Key_Type FROM [Sales].[Customer]

UNION

SELECT TOP 10 [BusinessEntityID], 'BusinessEntityContact' AS Key_Type FROM [Person].[BusinessEntityContact]















