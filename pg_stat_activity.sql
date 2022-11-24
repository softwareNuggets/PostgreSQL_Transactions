

--reset stat counters
SELECT pg_stat_reset();


--show all active/abandon processes
select 	state,datname,pid,* 
from 	pg_stat_activity;


--show idle processes
select 	state,datname,pid,*
from 	pg_stat_activity
where 	datname = 'Learn'
AND 	pid <> pg_backend_pid()
and 	state in ('idle', 'active')

--kill pid	
SELECT 	pg_terminate_backend(pid) 
FROM 	pg_stat_activity
WHERE 	datname = 'Learn'		--name of database catalog
AND 	pid <> pg_backend_pid() --don't kill my own connection
AND 	state = 'idle'			--the value of state column is idle
and 	pid = aaaa;			--use the pid column value




--window 2
select *
from hr_employee
where emp_id=1
order by emp_id

--20328
select  pg_backend_pid()


begin;

	update hr_employee
	set annual_salary = 22222
	where emp_id = 1;
	
	--rollback
	--commit