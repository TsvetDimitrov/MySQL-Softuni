INSERT INTO students(first_name, last_name, age, phone_number)
SELECT
	REVERSE(LOWER(s.first_name)),
	REVERSE(LOWER(s.last_name)),
    s.age + SUBSTRING(s.phone_number, 1, 1),
    CONCAT('1+', s.phone_number)
FROM students AS s
WHERE s.age < 20;