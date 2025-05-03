WITH AvgOrders([AvgOrders], [SubCategory], ProductSubcategoryID) AS 
(

SELECT AVG(s.OrderQty) AS AvgOrders, ps.Name AS SubCategory, ps.ProductSubcategoryID

FROM
[Sales].[SalesOrderDetail] s INNER JOIN
[Production].[Product] p ON s.ProductID = p.ProductID INNER JOIN
[Production].[ProductSubcategory] ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID

GROUP BY ps.[Name], ps.[ProductSubcategoryID]
)


