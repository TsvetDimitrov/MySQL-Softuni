-- 06. Employees by Salary Level --
-- Please submit the solution solution without the Delimeter and the symbols --

CREATE FUNCTION ufn_get_salary_level(`salary` DECIMAL(19, 2))
    RETURNS VARCHAR(255)
    RETURN (
        CASE
            WHEN salary < 30000 THEN 'Low'
            WHEN salary <= 50000 THEN 'Average'
            ELSE 'High'
END);

DELIMITER ==
CREATE PROCEDURE usp_get_employees_by_salary_level (level_of_salary VARCHAR(45))
BEGIN
	SELECT first_name, last_name FROM employees 
	WHERE ufn_get_salary_level(salary) = level_of_salary
    ORDER BY first_name desc, last_name desc;
END==

CALL usp_get_employees_by_salary_level('High');
