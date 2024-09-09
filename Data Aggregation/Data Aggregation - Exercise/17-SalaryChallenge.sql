SELECT first_name, last_name, department_id FROM employees e1
WHERE salary >
(
	SELECT AVG(salary) FROM employees
    WHERE department_id = e1.department_id
)
ORDER BY department_id, employee_id LIMIT 10;