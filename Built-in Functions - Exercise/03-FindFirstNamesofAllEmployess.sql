SELECT first_name FROM employees
WHERE (department_id = 3 OR department_id = 10) AND (YEAR(hire_date) >= 1995 AND YEAR(hire_date) <= 2005)
ORDER BY employee_id;