-- 02. Employees with Salary Above Number --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_get_employees_salary_above(given_salary DECIMAL(16,4))
BEGIN
	SELECT first_name, last_name FROM employees
    WHERE salary >= given_salary
    ORDER BY first_name, last_name, employee_id;
END==

CALL usp_get_employees_salary_above(45000);


