-- 17. Highest Peak and Longest River by Country --

SELECT
    c.country_name,
    MAX(p.elevation) AS `highest_peak_elevation`,
    MAX(r.length) AS `longest_river_length`
FROM countries AS c
    JOIN mountains_countries AS mc ON c.country_code = mc.country_code
    JOIN peaks AS p ON mc.mountain_id = p.mountain_id
    JOIN countries_rivers AS cr ON c.country_code = cr.country_code
    JOIN rivers AS r ON r.id = cr.river_id
GROUP BY c.country_name
ORDER BY highest_peak_elevation DESC, longest_river_length DESC
LIMIT 5;