DELIMITER ==
CREATE FUNCTION udf_offers_from_city_name (cityName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE total_city_offers INT;
    SET total_city_offers := (
		SELECT COUNT(p.id) FROM properties AS p
			JOIN cities AS c ON c.id = p.city_id
            JOIN property_offers AS po ON p.id = po.property_id
            WHERE c.name = cityName
    );
    RETURN total_city_offers;
END;==

SELECT udf_offers_from_city_name('Amsterdam') AS 'offers_count';

