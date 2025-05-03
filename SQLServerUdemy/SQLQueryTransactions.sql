BEGIN TRAN
	BEGIN TRY
		DECLARE @TestVar INT
		--SELECT @TestVar = 'Error'
		SELECT @TestVar = 1
	END TRY

	--Catch errors
	BEGIN CATCH

		IF @@TRANCOUNT > 0
		BEGIN
		PRINT 'Number of Transactions: ' + CAST(@@TRANCOUNT AS VARCHAR(10))
			ROLLBACK TRAN
			PRINT 'SQL Rolled Back'
		END

	END CATCH

	--Commit transaction
	IF @@TRANCOUNT > 0
	BEGIN
		COMMIT TRAN
		PRINT 'Transaction Comitted'
	END