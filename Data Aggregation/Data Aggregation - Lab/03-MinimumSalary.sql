-- 3. Minimum Salary --

SELECT department_id, ROUND(MIN(salary), 2) AS 'Min_Salary' FROM employees
GROUP BY department_id
HAVING Min_Salary > 800
ORDER BY department_id;