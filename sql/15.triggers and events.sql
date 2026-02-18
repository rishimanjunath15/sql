-- triggers 
delimiter $$
create trigger employee_insert
after insert
on parks_and_recreation.employee_salary
for each row
begin
	insert into parks_and_recreation (employee_id,first_name,last_name)
	values (new.employee_id, new.first_name, new.last_name);
end $$
delimiter ;

insert into parks_and_recreation.employee_salary (employee_id, first_name, last_name, occupation, salary,dept_id)
values (101, 'John', 'Doe', 'Developer', 55000, NULL);

-- EVENTS
delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
	delete
	from parks_and_recreation.employee_demographics
	where age > 65;
end
$$
delimiter ;