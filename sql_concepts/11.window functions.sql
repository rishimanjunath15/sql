SELECT ed.first_name,ed.last_name,gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics AS ed
JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;
    
SELECT ed.first_name,ed.last_name,gender,salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY ed.employee_id ) AS rolling_total
FROM employee_demographics AS ed
JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;
    
    
SELECT ed.first_name,ed.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY es.salary DESC) AS rn,
RANK() OVER(PARTITION BY gender ORDER BY es.salary DESC) AS rnK,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY es.salary DESC) AS dns
FROM employee_demographics AS ed
JOIN employee_salary AS es
	ON ed.employee_id = es.employee_id;