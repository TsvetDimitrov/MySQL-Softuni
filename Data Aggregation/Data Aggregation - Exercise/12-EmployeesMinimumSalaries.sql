-- 12. Employees Minimum Salaries --

SELECT department_id, MIN(salary) AS 'minimum_salary' FROM employees
WHERE department_id IN (2, 5, 7)
GROUP BY department_id
ORDER BY department_id;