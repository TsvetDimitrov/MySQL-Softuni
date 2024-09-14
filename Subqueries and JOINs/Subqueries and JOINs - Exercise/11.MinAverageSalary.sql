-- 11. Min Average Salary --

SELECT MIN(avg_salary) AS lowest_avg_salary
FROM (SELECT AVG(salary) AS avg_salary
      FROM employees
      GROUP BY department_id) AS department_averages;