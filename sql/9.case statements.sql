-- CASE STATEMENTS

SELECT first_name,last_name,age,
CASE
	WHEN age <= 35 THEN "YOUNG"
    WHEN age BETWEEN 35 AND 60 THEN "OLD"
    WHEN age > 60 THEN "TOO OLD"
END AS AGE_BRACKET
FROM employee_demographics;


-- salary <= 50000 icrease 5%
-- salary >= 50000 icrease 7%
-- dept_name = finance icrease 10%


SELECT first_name,dept_id,department_name,salary,
CASE 
	WHEN pd.department_name="Finance" THEN (es.salary*0.1)+es.salary 
	WHEN es.salary<=50000 THEN (es.salary*0.05)+es.salary 
    WHEN es.salary>=50000 THEN (es.salary*0.07)+es.salary
    
END AS hike
FROM employee_salary AS es
INNER JOIN parks_departments AS pd
	ON es.dept_id = pd.department_id





