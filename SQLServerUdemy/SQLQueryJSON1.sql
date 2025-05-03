CREATE TABLE Covid.JSONExample(
	Cars NVARCHAR(1000)
)

INSERT INTO Covid.JSONExample(
	Cars
)
VALUES(

'{ "car": 
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
)

SELECT [Cars],
	JSON_VALUE(Cars, '$car.id') AS ID,
	JSON_QUERY(Cars, '$.car.feature.list') AS List,
	ISJSON([Cars]) AS Is_Valid_JSON,
	JSON_MODIFY(Cars, '$.car.price', '50000') AS Modified_Value,
	JSON_MODIFY(Cars, 'lax $.car.sold', 'true') AS Insert_Key_Value,
	JSON_MODIFY(Cars, '$car.id', null) AS Delete_ID
FROM Covid.JSONExample
WHERE ISJSON([Cars]) = 1