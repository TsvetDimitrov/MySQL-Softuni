-- 22. Biggest Countries by Population --

SELECT country_name, population FROM countries
WHERE continent_code = 'EU'
ORDER BY population DESC, country_name ASC
LIMIT 30;