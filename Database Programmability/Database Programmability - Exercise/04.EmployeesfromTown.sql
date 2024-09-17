-- 04. Employees from Town --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_get_employees_from_town (town_name VARCHAR(45))
BEGIN
	SELECT e.first_name, e.last_name FROM employees AS e
    JOIN addresses as a ON a.address_id = e.address_id
    JOIN towns as t ON a.town_id = t.town_id
    WHERE t.name LIKE town_name
    ORDER BY e.first_name, e.last_name, e.employee_id;
END==

CALL usp_get_employees_from_town('Sofia');