SELECT * FROM Workers WHERE worker_id = 2
BEGIN TRAN outerTranUpdateWorker
	UPDATE Workers SET worker_retire_age = 123 WHERE worker_id = 2
	EXEC innerProcUpdateWorker
	SELECT * FROM Workers WHERE worker_id = 2
ROLLBACK TRAN outerTranUpdateWorker
SELECT * FROM Workers WHERE worker_id = 2