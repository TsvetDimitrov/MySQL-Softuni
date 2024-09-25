SELECT CONCAT(s.first_name, ' ', s.last_name) AS 'full_name', SUBSTR(LCASE(CONCAT(s.first_name, '.', s.last_name)), 2, 10) AS 'username', 
	REVERSE(s.phone) AS 'password' FROM students AS s
LEFT JOIN students_courses AS sc ON sc.student_id = s.id
LEFT JOIN courses AS c ON sc.course_id = c.id
WHERE sc.student_id IS NULL
ORDER BY password desc;