SELECT town_id, name FROM towns
WHERE SUBSTR(name, 1, 1) != 'R' AND SUBSTR(name, 1, 1) != 'B' AND SUBSTR(name, 1, 1) != 'D'
ORDER BY name;