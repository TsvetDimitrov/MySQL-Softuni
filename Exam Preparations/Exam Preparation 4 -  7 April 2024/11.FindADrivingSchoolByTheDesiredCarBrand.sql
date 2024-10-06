DELIMITER ==
CREATE PROCEDURE udp_find_school_by_car (brand VARCHAR(20))
BEGIN
	SELECT
        ds.name,
        ds.average_lesson_price
    FROM driving_schools AS ds
        JOIN cars AS c ON c.id = ds.car_id
    WHERE c.brand = brand
    ORDER BY ds.average_lesson_price desc; 
END;==

CALL udp_find_school_by_car ('Mercedes-Benz');