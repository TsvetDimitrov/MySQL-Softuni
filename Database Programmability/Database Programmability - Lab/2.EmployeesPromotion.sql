-- 2. Employees Promotion --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(100))
BEGIN
	UPDATE employees AS e
		RIGHT JOIN departments AS d ON e.department_id = d.department_id
		SET salary = salary * 1.05
	WHERE d.name = department_name;
END==

CALL usp_raise_salaries('Sales');