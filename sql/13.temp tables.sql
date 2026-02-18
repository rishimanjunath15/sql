
CREATE TEMPORARY TABLE movie_table(
MOVIE varchar(50),
HERO varchar(50),
RELEASEYEAR INT(50)
);

SELECT *
FROM movie_table;

INSERT INTO movie_table
VALUES("KGF","YASH",2020);


CREATE TEMPORARY TABLE salary_above_50k AS
SELECT salary
FROM employee_salary
WHERE salary<50000;

SELECT *
FROM salary_above_50k;
