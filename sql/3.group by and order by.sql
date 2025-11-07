
#GROUP BY

SELECT occupation
FROM employee_salary
GROUP BY occupation;


SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;

SELECT gender,AVG(age),MAX(age) ,MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;


SELECT dept_id , AVG(salary)
FROM employee_salary
WHERE dept_id = 1
GROUP BY dept_id;


SELECT dept_id , AVG(salary)
FROM employee_salary
GROUP BY dept_id;


#ORDER BY


SELECT *
FROM employee_demographics
ORDER BY age ;

SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;







