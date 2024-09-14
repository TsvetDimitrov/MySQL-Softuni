-- 13. Count Mountain Ranges --

SELECT
    c.country_code,
    COUNT(m.mountain_range) AS `mountain_range` FROM countries AS c
		 JOIN mountains_countries mc on c.country_code = mc.country_code
         JOIN mountains m on m.id = mc.mountain_id 
         WHERE c.country_name IN ('United States', 'Russia ', 'Bulgaria')
GROUP BY c.country_code
ORDER BY mountain_range DESC;