--	Commit-transaction for UPDATE (1)
/*
	SELECT * FROM Workers
	BEGIN TRAN tranUpdateCommitAllWorkers
		UPDATE Workers SET worker_retire_age = 101 WHERE worker_id = 1
		SELECT * FROM Workers
	COMMIT TRAN tranUpdateCommitAllWorkers
*/

--	Rollback-transaction for UPDATE (1)
/*
	SELECT * FROM Workers
	BEGIN TRAN tranUpdateRollbackAllWorkers
		UPDATE Workers SET worker_retire_age = 57 WHERE worker_id = 1
		SELECT * FROM Workers
	ROLLBACK TRAN tranUpdateRollbackAllWorkers
	SELECT * FROM Workers
*/

--	Save-transaction for UPDATE (1)
/*
	SELECT * FROM Workers WHERE worker_id = 1
		BEGIN TRAN tranUpdateSaveAllWorkers
			UPDATE Workers SET worker_retire_age = 57 WHERE worker_id = 1		
			SAVE TRAN saveTranUpdateSaveAllWorkers
			SELECT * FROM Workers WHERE worker_id = 1
			UPDATE Workers SET worker_retire_age = 101 WHERE worker_id = 1
			SELECT * FROM Workers WHERE worker_id = 1
			ROLLBACK TRAN saveTranUpdateSaveAllWorkers
		COMMIT TRAN tranUpdateSaveAllWorkers
	SELECT * FROM Workers WHERE worker_id = 1
*/


--	Commit-transaction for UPDATE (2)
/*
	SELECT * FROM Devices WHERE device_code = 1
	BEGIN TRAN tranUpdateCommitAllDevices
		UPDATE Devices SET device_table_modification_status = 'QwErTyUiOp' WHERE device_code = 1
		SELECT * FROM Devices
	COMMIT TRAN tranUpdateCommitAllDevices
*/

--	Rollback-transaction for UPDATE (2)
/*
	SELECT * FROM Devices WHERE device_code = 1
	BEGIN TRAN tranUpdateRollbackAllDevices
		UPDATE Devices SET device_table_modification_status = 'modified' WHERE device_code = 1
		SELECT * FROM Devices WHERE device_code = 1
	ROLLBACK TRAN tranUpdateRollbackAllDevices
	SELECT * FROM Devices WHERE device_code = 1
*/

--	Save-transaction for UPDATE (2)
/*
	SELECT * FROM Devices WHERE device_code = 1
		BEGIN TRAN tranUpdateSaveAllDevices
			UPDATE Devices SET device_table_modification_status = 'modified' WHERE device_code = 1	
			SAVE TRAN saveTranUpdateSaveAllDevices
			SELECT * FROM Devices WHERE device_code = 1
			UPDATE Devices SET device_table_modification_status = 'QwErTyUiOp' WHERE device_code = 1
			SELECT * FROM Devices WHERE device_code = 1
			ROLLBACK TRAN saveTranUpdateSaveAllDevices
		COMMIT TRAN tranUpdateSaveAllDevices
	SELECT * FROM Devices WHERE device_code = 1
*/



--	Commit-transaction for UPDATE (3)
/*
	SELECT * FROM Clients WHERE client_id = 1
	BEGIN TRAN tranUpdateCommitAllClients
		UPDATE Clients SET client_contact_mail = 'dyk4WoW4ycya@gmail' WHERE client_id = 1
		SELECT * FROM Clients WHERE client_id = 1
	COMMIT TRAN tranUpdateCommitAllClients
*/

--	Rollback-transaction for UPDATE (3)
/*
	SELECT * FROM Clients WHERE client_id = 1
	BEGIN TRAN tranUpdateRollbackAllClients
		UPDATE Clients SET client_contact_mail = 'dyk4WoW4ycya@gmail.com' WHERE client_id = 1
		SELECT * FROM Clients WHERE client_id = 1
	ROLLBACK TRAN tranUpdateRollbackAllClients
	SELECT * FROM Clients WHERE client_id = 1
*/

--	Save-transaction for UPDATE (3)
/*
SELECT * FROM Clients WHERE client_id = 1
	BEGIN TRAN tranUpdateSaveAllClients
		UPDATE Clients SET client_contact_mail = 'dyk4WoW4ycya@gmail.com' WHERE client_id = 1		
		SAVE TRAN saveTranUpdateSaveAllClients
		SELECT * FROM Clients WHERE client_id = 1
		UPDATE Clients SET client_contact_mail = 'dyk4WoW4ycya@gmail' WHERE client_id = 1
		SELECT * FROM Clients WHERE client_id = 1
		ROLLBACK TRAN saveTranUpdateSaveAllClients
	COMMIT TRAN tranUpdateSaveAllClients
SELECT * FROM Clients WHERE client_id = 1
*/