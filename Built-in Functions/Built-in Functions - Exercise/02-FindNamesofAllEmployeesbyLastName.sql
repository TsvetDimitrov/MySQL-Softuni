-- 02. Find Names of All Employees by Last Name --

SELECT first_name, last_name FROM employees
WHERE last_name LIKE '%ei%'
ORDER BY employee_id;