SELECT department_id AS department_idd , (
    SELECT DISTINCT salary FROM employees
    WHERE department_id = department_idd
    ORDER BY salary DESC LIMIT 1 OFFSET 2
) AS 'third_highest_salary' FROM employees
GROUP BY department_id
HAVING third_highest_salary IS NOT NULL
ORDER BY department_id;