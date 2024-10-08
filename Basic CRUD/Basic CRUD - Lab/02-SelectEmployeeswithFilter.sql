-- 02. Select Employees with Filter --

SELECT id, CONCAT(first_name, ' ',  last_name) AS fullname, job_title, salary FROM `employees` WHERE salary > 1000.00 ORDER BY id ASC;