SELECT c.name, COUNT(*) AS instructors_count FROM instructors AS i
JOIN instructors_driving_schools AS ids ON ids.instructor_id = i.id
JOIN driving_schools AS ds ON ds.id = ids.driving_school_id
JOIN cities AS c ON c.id = ds.city_id
GROUP BY c.name
HAVING instructors_count > 0
ORDER BY instructors_count desc;