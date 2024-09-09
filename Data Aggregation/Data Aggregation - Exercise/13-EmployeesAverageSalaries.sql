SET SQL_SAFE_UPDATES = 0;
-- Use the query above to turn off the safe update mode --

CREATE TABLE highly_paid_employees (
	SELECT * FROM employees
	WHERE salary > 30000
);

DELETE FROM highly_paid_employees
WHERE manager_id = 42;

UPDATE highly_paid_employees
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id, AVG(salary) AS avg_salary FROM highly_paid_employees
GROUP BY department_id
ORDER BY department_id;
