-- 08. Extract all planets and their journey count --

SELECT
    p.name AS `planet_name`,
    COUNT(j.id) AS `journeys_count`
FROM planets AS p
    JOIN spaceports AS s ON p.id = s.planet_id
    JOIN journeys AS j ON s.id = j.destination_spaceport_id
GROUP BY p.name
ORDER BY journeys_count DESC, p.name;