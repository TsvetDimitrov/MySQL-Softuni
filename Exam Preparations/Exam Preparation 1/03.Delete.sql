-- 03. Delete --

DELETE c FROM colonists AS c
	LEFT JOIN travel_cards AS tc ON tc.colonist_id = c.id
    LEFT JOIN journeys AS j ON j.id = tc.journey_id
WHERE tc.journey_id is NULL;