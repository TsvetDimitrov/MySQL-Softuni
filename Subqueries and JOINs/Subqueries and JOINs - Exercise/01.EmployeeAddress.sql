-- 01. Employee Address --

SELECT employees.employee_id, employees.job_title, employees.address_id, addresses.address_text FROM employees
JOIN addresses ON employees.address_id = addresses.address_id
LIMIT 5;

-- OR --

SELECT e.employee_id, e.job_title, e.address_id, a.address_text FROM employees AS e
JOIN addresses AS a ON e.address_id = a.address_id
LIMIT 5;