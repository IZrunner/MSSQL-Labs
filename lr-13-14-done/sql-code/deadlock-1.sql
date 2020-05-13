set transaction isolation level read uncommitted
begin tran 
	update Workers set worker_retire_age = 21 where worker_id = 1
	select * from Workers where worker_id in(1,2)
commit tran