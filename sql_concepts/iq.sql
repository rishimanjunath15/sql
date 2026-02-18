-- interview related questions and answers

CREATE table employee_table(
id int,
Namei varchar(20),
salary int);

insert into employee_table values(1,"rishi",5000);
insert into employee_table values(1,"uttam",50000);
insert into employee_table values(1,"rohan",50000);
insert into employee_table values(1,"druva",500000);

select *
from employee_table;

select Namei 
from employee_table
order by Namei;

select salary
from employee_table
where salary <=49900 or salary >70000;

alter table employee_table drop salary;



-- 1. Data Definition Language (DDL)

-- Used to define or change structure of database objects.

-- Command	Purpose
-- CREATE	Create tables, databases, views
-- ALTER	Modify table structure (add/change columns)
-- DROP	Delete tables or databases
-- TRUNCATE	Delete all records (faster than DELETE)
-- RENAME	Rename table
-- 🔥 2. Data Manipulation Language (DML)

-- Used to manipulate data inside tables.

-- Command	Purpose
-- SELECT	Retrieve data
-- INSERT	Add records
-- UPDATE	Modify existing records
-- DELETE	Remove records
-- 🔥 3. Data Control Language (DCL)

-- Used to control access and permissions.

-- Command	Purpose
-- GRANT	Give permissions
-- REVOKE	Remove permissions
-- 🔥 4. Transaction Control Language (TCL)

-- Used to manage transactions and ensure data integrity.

-- Command	Purpose
-- COMMIT	Save changes
-- ROLLBACK	Undo changes
-- SAVEPOINT	Create a checkpoint
-- SET TRANSACTION	Set transaction properties
-- 🔥 5. Data Query Language (DQL)

-- Some people consider SELECT as a separate category.

-- Command	Purpose
-- SELECT	Query data




create table class(
id int,
section varchar(20));

insert into class values(1,"a");
insert into class values(2,"b");
insert into class values(3,"c");

select *
from class;

create table students(
id int,
namess varchar(20));

insert into students values(1,"abhishek");
insert into students values(2,"bhavana");
insert into students values(4,"chiranth");


select student.namess
from class
full join students
	on class.id=students.id;












