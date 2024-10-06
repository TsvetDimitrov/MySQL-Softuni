SELECT ds.id, ds.name, c.brand FROM driving_schools AS ds
JOIN cars AS c ON c.id = ds.car_id
LEFT JOIN instructors_driving_schools AS ids ON ds.id = ids.driving_school_id
WHERE ids.instructor_id IS NULL
ORDER BY c.brand ASC, ds.id
LIMIT 5;