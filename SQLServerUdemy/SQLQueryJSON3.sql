DECLARE @json NVARCHAR(1000)

SET JSON = '{ "car": 
  {
	  "id": "1",
	  "price": "40000", 
	  "feature": 
	  {
		"list": 
		[
		  {"noDoors": 5, "colour": "red"},
		  {"noDoors": "3", "colour": "blue"},
		  {"noDoors": "5", "colour": "green"}
		]
      }
  }
}'

SELECT * FROM OPENJSON(@json)
WITH(
	id INT '$car.id',
	price INT '$car.price',
	option_1_colour VARCHAR(50) '$car.feature.list[0].colour',
	option_1_colour VARCHAR(50) '$car.feature.list[1].colour',
	option_1_colour VARCHAR(50) '$car.feature.list[2].colour'
);