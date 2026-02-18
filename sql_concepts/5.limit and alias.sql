#LIMIT

SELECT *
FROM employee_demographics
LIMIT 3;

SELECT *
FROM employee_demographics
LIMIT 4,2;

#ALIAS

SELECT first_name,AVG(age)
FROM employee_demographics
GROUP BY first_name
HAVING AVG(age) >40;

SELECT first_name,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY first_name
HAVING avg_age >40;

