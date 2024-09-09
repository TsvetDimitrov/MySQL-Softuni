-- 09. Length of Last Name --

SELECT first_name, last_name FROM employees 
WHERE char_length(last_name) = 5;

-- OR --

SELECT first_name, last_name FROM employees 
WHERE length(last_name) = 5;