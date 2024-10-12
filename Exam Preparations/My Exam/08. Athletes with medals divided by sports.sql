SELECT a.id, a.first_name, a.last_name, COUNT(dam.medal_id) AS medals_count, s.name FROM athletes AS a
JOIN disciplines_athletes_medals AS dam ON dam.athlete_id = a.id
JOIN medals AS m ON dam.medal_id = m.id
JOIN disciplines AS d ON d.id = dam.discipline_id
JOIN sports AS s ON s.id = d.sport_id
GROUP BY a.id, a.first_name, a.last_name, s.name 
ORDER BY medals_count DESC, a.first_name
LIMIT 10;