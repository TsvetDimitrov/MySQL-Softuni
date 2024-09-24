INSERT INTO courses(name, duration_hours, start_date, teacher_name, description, university_id)
SELECT
	(CONCAT(c.teacher_name, ' course')) cn,
	CHAR_LENGTH(name) / 10,
    DATE(c.start_date + 5),
    REVERSE(c.teacher_name),
    CONCAT('Course ', c.teacher_name, REVERSE(c.description)),
    DAY(start_date)
FROM courses AS c
WHERE c.id <= 5;