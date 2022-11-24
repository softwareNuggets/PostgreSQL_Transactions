
--drop table hr_employee
--truncate table hr_employee


create table hr_employee
(
	emp_id 	int not null,
	annual_salary numeric not null,
	hourly_rate 	numeric generated always as (annual_salary/2080) stored
)	
	

begin

	insert into hr_employee(emp_id, annual_salary)
	values
	(3, 70000),
	(4, 70000),
	(5, 70000),
	(6, 70000),
	(7, 70000),
	(8, 70000)
	
	
	select * from hr_employee

	--commit
	--rollback
	
	