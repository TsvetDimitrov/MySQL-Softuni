CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(19, 2)
DETERMINISTIC
BEGIN
	DECLARE average_grade DECIMAL(19, 2);
    SET average_grade := (
		SELECT AVG(sc.grade) FROM students_courses AS sc
			JOIN students AS s ON sc.student_id = s.id
            JOIN courses AS c ON c.id = sc.course_id
            WHERE s.is_graduated = 1 AND c.name = course_name
    );
    RETURN average_grade;
END;

SELECT c.name, udf_average_alumni_grade_by_course_name('Quantum Physics') as average_alumni_grade FROM courses c
WHERE c.name = 'Quantum Physics';