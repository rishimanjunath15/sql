DELIMITER $$
CREATE PROCEDURE stored_procedure1()

begin

	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;

	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;

end 
$$ DELIMITER ;

CALL stored_procedure1();



-- for partameter


CREATE PROCEDURE stored_procedure2(employee_id INT)
	SELECT salary
	FROM employee_salary
	WHERE employee_id = employee_id;

CALL stored_procedure2(3);

CREATE PROCEDURE stored_procedure3(huggymuffin INT)
	SELECT salary
	FROM employee_salary
	WHERE employee_id = huggymuffin;

CALL stored_procedure3(3);

