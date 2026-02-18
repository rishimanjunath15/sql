SELECT occupation,AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary)>50000;

SELECT occupation,AVG(salary)
FROM employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary)>50000;