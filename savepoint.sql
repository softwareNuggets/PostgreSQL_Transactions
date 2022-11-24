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
	
--In database systems, savepoints are helpful for performing complicated error recovery. 
--Using multiple lined statement, in a transaction, we are able to roll back to a savepoint (point in time)
--in the event, an error occurs, allowing the application to recover without 
--having to cancel the entire transaction.
begin transaction

	insert into hr_employee(emp_id, annual_salary) values(1,40000);
	insert into hr_employee(emp_id, annual_salary) values(2,50000);
	insert into hr_employee(emp_id, annual_salary) values(3,65000);
	savepoint emp;
	
	insert into hr_employee(emp_id, annual_salary) values(4,70000);
	insert into hr_employee(emp_id, annual_salary) values(5,85000);
	update hr_employee set annual_salary = 41000 where emp_id = 1;
	savepoint emp;
	
	insert into hr_employee(emp_id, annual_salary) values(6,90000);
	insert into hr_employee(emp_id, annual_salary) values(7,95000);
	insert into hr_employee(emp_id, annual_salary) values(8,96000);
	delete from hr_employee where emp_id=2;
	savepoint emp;
	
	insert into hr_employee(emp_id, annual_salary) values(9,97000);
	insert into hr_employee(emp_id, annual_salary) values(10,97500);
	insert into hr_employee(emp_id, annual_salary) values(11,97700);
	insert into hr_employee(emp_id, annual_salary) values(12,97800);
	
	rollback to savepoint emp;
	release savepoint emp_5;
	
	select * from hr_employee

	--commit
	--rollback
	
	