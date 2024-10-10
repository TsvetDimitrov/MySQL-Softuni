SELECT i.first_name, i.last_name, COUNT(ist.instructor_id) AS 'students_count', c.name FROM instructors AS i
JOIN instructors_driving_schools AS ids ON ids.instructor_id = i.id
JOIN driving_schools AS ds ON ds.id = ids.driving_school_id
JOIN cities AS c ON c.id = ds.city_id
JOIN instructors_students AS ist ON ist.instructor_id = i.id
GROUP BY i.id, i.first_name, c.name
HAVING students_count > 1
ORDER BY students_count desc, i.first_name asc;

SELECT i.first_name, i.last_name, COUNT(ist.instructor_id) AS 'students_count', 
(SELECT c.name FROM cities AS c
JOIN driving_schools AS ds ON c.id = ds.city_id
JOIN instructors_driving_schools AS idc ON ds.id = idc.driving_school_id
WHERE i.id = idc.instructor_id)  AS name
FROM instructors AS i
JOIN instructors_driving_schools AS ids ON ids.instructor_id = i.id
JOIN driving_schools AS ds ON ds.id = ids.driving_school_id
JOIN cities AS c ON c.id = ds.city_id
JOIN instructors_students AS ist ON ist.instructor_id = i.id
GROUP BY i.id
HAVING students_count > 1
ORDER BY students_count desc, i.first_name asc;