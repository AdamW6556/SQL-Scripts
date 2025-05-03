select [UnitPrice],[UnitPriceDiscount], 
		[UnitPrice] + [UnitPriceDiscount],
		[UnitPrice] - 2,
		[UnitPrice] * 2,
		[UnitPrice] / 4,
		[UnitPrice] % 4,
		'abc' + [CarrierTrackingNumber]

from [Sales].[SalesOrderDetail] 