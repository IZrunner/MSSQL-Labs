create trigger updateWorkersData
on Workers
after insert, update, delete
as	
	IF UPDATE(worker_retire_age)
        PRINT 'Modified one row value' 		
