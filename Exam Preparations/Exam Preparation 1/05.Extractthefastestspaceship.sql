-- 05. Extract the fastest spaceship --

SELECT ss.name AS 'spaceship_name', sp.name AS 'spaceport_name' FROM spaceships AS ss
	JOIN journeys AS j ON j.spaceship_id = ss.id
    JOIN spaceports AS sp ON j.destination_spaceport_id = sp.id
	ORDER BY ss.light_speed_rate desc
    LIMIT 1;