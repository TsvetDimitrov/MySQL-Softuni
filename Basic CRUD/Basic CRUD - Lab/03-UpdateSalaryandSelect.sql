-- 03. Update Salary and Select --

UPDATE `employees` SET salary = salary + 100 WHERE job_title = 'Manager';
SELECT salary FROM `employees`;