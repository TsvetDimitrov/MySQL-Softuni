-- 10 . Get colonists count --

DELIMITER ==
CREATE FUNCTION udf_count_colonists_by_destination_planet(planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM colonists AS c
            JOIN travel_cards AS tc ON c.id = tc.colonist_id
            JOIN journeys AS j on j.id = tc.journey_id
            JOIN spaceports AS sp ON j.destination_spaceport_id = sp.id
            JOIN planets AS p ON p.id = sp.planet_id
        WHERE p.name = planet_name
        );
END==


SELECT p.name, udf_count_colonists_by_destination_planet('Otroyphus') AS count
FROM planets AS p
WHERE p.name = 'Otroyphus';
