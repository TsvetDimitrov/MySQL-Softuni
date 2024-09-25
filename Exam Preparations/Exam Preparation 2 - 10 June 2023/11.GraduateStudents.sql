CREATE PROCEDURE udp_graduate_all_students_by_year(year_started INT)
BEGIN
	UPDATE students s
    JOIN students_courses AS sc ON sc.student_id = s.id
    JOIN courses AS c ON c.id = sc.course_id
	SET s.is_graduated = 1
	WHERE YEAR(c.start_date) = year_started;
END;