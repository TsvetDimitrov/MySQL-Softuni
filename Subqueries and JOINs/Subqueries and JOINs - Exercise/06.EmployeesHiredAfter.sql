-- 06. Employees Hired After --

SELECT e.first_name, e.last_name, e.hire_date, d.name AS 'dept_name' FROM employees AS e
JOIN departments AS d ON e.department_id = d.department_id
WHERE e.hire_date > '1999-01-01' AND (d.name = 'Sales' OR d.name = 'Finance')
ORDER BY hire_date;