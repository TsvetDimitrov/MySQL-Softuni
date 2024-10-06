DELIMITER ==
CREATE FUNCTION udf_average_lesson_price_by_city  (name VARCHAR(40))
RETURNS DECIMAL(19, 2)
DETERMINISTIC
BEGIN
	DECLARE average_lesson_price DECIMAL(19, 2);
    SET average_lesson_price := (
		SELECT AVG(ds.average_lesson_price) FROM driving_schools AS ds
			JOIN cities AS c ON c.id = ds.city_id
            WHERE c.name = name
    );
    RETURN average_lesson_price;
END;==

SELECT c.name, udf_average_lesson_price_by_city ('London') as average_lesson_price
FROM cities c
WHERE c.name = 'London'

