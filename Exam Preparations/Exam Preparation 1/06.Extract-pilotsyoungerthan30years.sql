-- 06. Extract - pilots younger than 30 years --

SELECT
    ss.name,
    ss.manufacturer
FROM spaceships AS ss
    JOIN journeys AS j ON ss.id = j.spaceship_id
    JOIN travel_cards AS tc ON j.id = tc.journey_id
    JOIN colonists AS c ON c.id = tc.colonist_id
WHERE (DATEDIFF('2019-01-01', c.birth_date) / 365) < 30 AND job_during_journey = 'Pilot'
GROUP BY ss.name, ss.manufacturer
ORDER BY ss.name;