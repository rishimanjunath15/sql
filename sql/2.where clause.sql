-- SELECT first_name
-- FROM employee_demographics;

-- SELECT *
-- FROM employee_demographics
-- WHERE first_name = "Ben";

-- SELECT *
-- FROM employee_demographics
-- WHERE age > 18 
-- AND
-- first_name LIKE "_e%";


-- SELECT *
-- FROM employee_demographics
-- WHERE age > 18 
-- AND
-- first_name LIKE "_e_";


SELECT *
FROM employee_salary
WHERE salary > 40000
AND
first_name LIKE "Leslie";

SELECT *
FROM employee_salary
WHERE (salary > 50000 AND first_name = "%e%") OR last_name = "Knope";





