-- 16. Countries without any Mountains --

SELECT
    COUNT(*) AS `country_count`
FROM countries AS c
    LEFT JOIN mountains_countries AS mc on c.country_code = mc.country_code
WHERE mc.mountain_id IS NULL;