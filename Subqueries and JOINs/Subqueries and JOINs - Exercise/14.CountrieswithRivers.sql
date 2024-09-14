-- 14. Countries with Rivers --

SELECT c.country_name, r.river_name FROM countries AS c
LEFT JOIN countries_rivers AS cr ON c.country_code = cr.country_code
LEFT JOIN rivers AS r ON r.id = cr.river_id
JOIN continents AS ct on ct.continent_code = c.continent_code
WHERE ct.continent_name = 'Africa'
ORDER BY c.country_name
LIMIT 5;

-- OR --

SELECT c.country_name, r.river_name FROM countries AS c
LEFT JOIN countries_rivers AS cr ON c.country_code = cr.country_code
LEFT JOIN rivers AS r ON r.id = cr.river_id
WHERE c.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;