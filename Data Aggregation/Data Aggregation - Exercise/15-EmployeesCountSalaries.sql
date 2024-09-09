-- 15. Employees Count Salaries --

SELECT COUNT(salary) AS salaries FROM employees
WHERE manager_id IS NULL;