CREATE PROC innerProcUpdateWorker
AS
BEGIN
	BEGIN TRAN innerTranUpdateWorker
		UPDATE Workers SET worker_retire_age = 101 WHERE worker_id = 2
	COMMIT TRAN innerTranUpdateWorker
END