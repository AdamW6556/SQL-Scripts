CREATE FUNCTION Covid.UDF_Is_Even
(
	@number INT
)
RETURNS BIT
AS
BEGIN

-- Declare the return variable
DECLARE @result BIT

	IF @number % 2 = 0
		SET @result = 1
	ELSE
		SET @result = 0

	--Result of the function
	RETURN @result

END

SELECT Covid.UDF_Is_Even(3)

-- DROP FUNCTION Covid.UDF_Is_Even