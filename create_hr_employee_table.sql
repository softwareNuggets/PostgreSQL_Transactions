use <DataBase Name>;

--drop table hr_employee;
--truncate table hr_employee;

--create table 
create table hr_employee
(
	emp_id 				int	not null,
	annual_salary		numeric not null,
	hourly_rate			numeric generated always as (annual_salary / 2080) stored
)