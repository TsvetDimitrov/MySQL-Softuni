-- 05. Salary Level Function --
-- Please submit the solution solution without the Delimeter and the symbols --

CREATE FUNCTION ufn_get_salary_level(`salary` DECIMAL(19, 2))
    RETURNS VARCHAR(255)
    DETERMINISTIC
BEGIN
    RETURN (
        SELECT
        CASE
            WHEN salary < 30000 THEN 'Low'
            WHEN salary <= 50000 THEN 'Average'
            WHEN salary > 50000 THEN 'High'
        END AS `salary_level`
    );
END