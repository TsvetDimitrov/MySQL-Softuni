-- 17. Increase Employees Salary --

SET SQL_SAFE_UPDATES = 0;

---The query above is not needed if you already have you SQL safe updates set to true. ---

UPDATE `employees` SET salary = salary * 1.1;
SELECT salary FROM `employees`;