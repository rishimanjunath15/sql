SELECT first_name,LENGTH(first_name)
FROM employee_demographics;

SELECT last_name,UPPER(last_name)
FROM employee_demographics;

SELECT gender,LOWER(gender)
FROM employee_demographics;

SELECT first_name,LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT TRIM("    hii    ");
SELECT LTRIM("   hii");
SELECT RTRIM("hii   ");

SELECT first_name,TRIM(first_name)
FROM employee_demographics;

SELECT first_name,SUBSTRING(first_name,2,3)
FROM employee_demographics;

SELECT birth_date,SUBSTRING(birth_date,6,2) AS bir_montth
FROM employee_demographics;

SELECT first_name, LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name, RIGHT(first_name,4)
FROM employee_demographics;


-- REPLACE

SELECT first_name,REPLACE(first_name,"e","z")
FROM employee_demographics;

-- LOCATE

SELECT LOCATE( "e",first_name)
FROM employee_demographics;

SELECT first_name,LOCATE("e",REVERSE(first_name))
FROM employee_demographics;

-- CONCAT

SELECT first_name,last_name,CONCAT(first_name," ",last_name)
FROM employee_demographics;












