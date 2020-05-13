--	Commit-transaction for SELECT (1)
/*
	BEGIN TRAN tranSelectCommitAllWorkers
		SELECT * FROM Workers
	COMMIT TRAN tranSelectCommitAllWorkers
*/

--	Rollback-transaction for SELECT (1)
/*
	BEGIN TRAN tranSelectRollbackAllWorkers
		SELECT * FROM Workers
	ROLLBACK TRAN tranSelectRollbackAllWorkers
*/

--	Save-transaction for SELECT (1)
/*
	BEGIN TRAN tranSelectSaveAllWorkers
		SELECT * FROM Workers
		SAVE TRAN saveTranSelectSaveAllWorkers
	COMMIT TRAN tranSelectSaveAllWorkers
*/


--	Commit-transaction for SELECT (2)
/*
	BEGIN TRAN tranSelectCommitAllDevices
		SELECT * FROM Devices
	COMMIT TRAN tranSelectCommitAllDevices
*/

--	Rollback-transaction for SELECT (2)
/*
	BEGIN TRAN tranSelectRollbackAllDevices
		SELECT * FROM Devices
	ROLLBACK TRAN tranSelectRollbackAllDevices
*/

--	Save-transaction for SELECT (2)
/*
	BEGIN TRAN tranSelectSaveAllDevices
		SELECT * FROM Devices
		SAVE TRAN saveTranSelectSaveAllDevices
	COMMIT TRAN tranSelectSaveAllDevices
*/



--	Commit-transaction for SELECT (3)
/*
	BEGIN TRAN tranSelectCommitAllClients
		SELECT * FROM Clients
	COMMIT TRAN tranSelectCommitAllClients
*/

--	Rollback-transaction for SELECT (3)
/*
	BEGIN TRAN tranSelectRollbackAllClients
		SELECT * FROM Clients
	ROLLBACK TRAN tranSelectRollbackAllClients
*/

--	Save-transaction for SELECT (3)
/*
	BEGIN TRAN tranSelectSaveAllClients
		SELECT * FROM Devices
		SAVE TRAN saveTranSelectSaveAllClients
	COMMIT TRAN tranSelectSaveAllClients
*/