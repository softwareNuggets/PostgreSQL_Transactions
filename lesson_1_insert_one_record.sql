select version()


--begin transaction or begin
--commit
--rollback

--savepoint
--rollback to savepoint
--release savepoint

--locking

--drop table hr_employee
--truncate table hr_employee


create table hr_employee
(
	emp_id 	int not null,
	annual_salary numeric not null,
	hourly_rate 	numeric generated always as (annual_salary/2080) stored
)	
	

begin transaction

	insert into hr_employee(emp_id, annual_salary)
	values(1,40000);
	
	select * from hr_employee

	--commit
	--rollback
	
	