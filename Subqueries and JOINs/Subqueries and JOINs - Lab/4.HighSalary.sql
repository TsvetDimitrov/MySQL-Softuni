-- 4. High Salary --

SELECT COUNT(*) as 'count' FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);