-- 1. Managers --

SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS 'full_name', departments.department_id, departments.name AS 'department_name'
FROM employees
JOIN departments ON employees.employee_id=departments.manager_id
ORDER BY employees.employee_id LIMIT 5;

-- OR --

SELECT
    e.employee_id,
    CONCAT_WS(' ', e.first_name, e.last_name) AS `full_name`,
    d.department_id,
    d.name AS `department_name`
FROM departments AS d
JOIN employees AS e on d.manager_id = e.employee_id
ORDER BY e.employee_id LIMIT 5;