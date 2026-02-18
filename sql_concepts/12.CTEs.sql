
WITH CTE_Problem AS
(
SELECT gender,AVG(age) AS avg_age,MAX(age),MIN(age),AVG(salary),MAX(salary),MIN(salary)
FROM parks_and_recreation.employee_demographics AS ed
JOIN parks_and_recreation.employee_salary AS es
	ON ed.employee_id = es.employee_id
GROUP BY gender
)

SELECT AVG(avg_age)
FROM CTE_Problem;



WITH CTE_EXAMPLE1 AS
(
SELECT employee_id,gender
FROM employee_demographics AS ed
WHERE gender = "Female"
),
CTE_EXAMPLE2 AS
(
SELECT employee_id,salary
FROM employee_salary AS es
WHERE salary>50000
)

SELECT *
FROM CTE_EXAMPLE1
JOIN CTE_EXAMPLE2
	ON CTE_EXAMPLE1.employee_id = CTE_EXAMPLE2.employee_id
 




























