
SELECT first_name,last_name,"old man" AS label
FROM employee_demographics
where age>40
UNION
SELECT first_name,last_name,"salary men" AS label
FROM employee_demographics
WHERE gender = "Male"
UNION 
SELECT first_name,last_name,"salary female" AS label
FROM employee_salary
WHERE salary>40000;


-- SELECT *
-- FROM employee_demographics;