--	try...catch for SELECT
/*
	BEGIN TRAN tranSelectSomeWorkers
		BEGIN TRY	
			SELECT * FROM Workers WHERE worker_id < 1
			COMMIT TRAN tranSelectSomeWorkers
		END TRY
		BEGIN CATCH
			ROLLBACK TRAN tranSelectSomeWorkers		
		END CATCH
*/



--	try...catch for UPDATE
/*
BEGIN TRAN tranUpdateSomeWorkers
	BEGIN TRY
		UPDATE Workers SET worker_retire_age = 101 WHERE worker_id < 1
		COMMIT TRAN tranUpdateSomeWorkers
		END TRY
	BEGIN CATCH
		ROLLBACK TRAN tranUpdateSomeWorkers	
	END CATCH
*/