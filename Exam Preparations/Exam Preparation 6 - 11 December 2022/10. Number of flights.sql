DELIMITER ==
CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE total_country_flights INT;
    SET total_country_flights := (
		SELECT COUNT(c.id) FROM countries AS c
			JOIN flights AS f ON f.departure_country = c.id
            WHERE c.name = country
    );
    RETURN total_country_flights;
END;==

SELECT udf_count_flights_from_country('Philippines') AS 'flights_count';