CREATE FUNCTION udf_total_medals_count_by_country (name VARCHAR(40))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE total_country_medals INT;
    SET total_country_medals := (
		SELECT COUNT(dam.medal_id) FROM disciplines_athletes_medals AS dam
			JOIN athletes AS a ON dam.athlete_id = a.id
			JOIN countries AS c ON c.id = a.country_id
            WHERE c.name = name
    );
    RETURN total_country_medals;
END;