-- #INNER JOIN 

-- SELECT *
-- FROM employee_demographics;

-- SELECT *
-- FROM employee_salary;

-- SELECT *
-- FROM employee_demographics
-- INNER JOIN employee_salary
-- ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT ed.employee_id,gender,occupation
FROM employee_demographics as ed
INNER JOIN employee_salary as es
ON ed.employee_id = es.employee_id;


#OUTER JOIN

#1.LEFT OUTER JOIN OR LEFT JOIN 

SELECT *
FROM employee_demographics AS ed
LEFT JOIN employee_salary AS es
ON ed.employee_id LIKE es.employee_id;

#2.RIGHT OUTER JOIN OR RIGHT JOIN

SELECT *
FROM employee_demographics AS ed
RIGHT JOIN employee_salary AS es
ON ed.employee_id LIKE es.employee_id;


#SELF JOIN 

SELECT 
es1.first_name AS esp_name,
es1.last_name AS esp_last,
es2.first_name AS esp_name,
es2.last_name AS esp_last

FROM employee_salary AS es1
JOIN employee_salary AS es2
	ON es1.employee_id+1 = es2.employee_id;
    
    
#MULTIPLE TABLES JOIN

SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id
INNER JOIN parks_departments AS pd
	ON es.dept_id = pd.department_id;



