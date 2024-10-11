SELECT CONCAT(UPPER(SUBSTRING(last_name, 1, 2)), p.country_id) AS 'flight_code', CONCAT(first_name, ' ', last_name) AS 'full_name', p.country_id FROM passengers AS p
LEFT JOIN flights_passengers AS fp ON fp.passenger_id = p.id
WHERE fp.flight_id IS NULL
ORDER BY p.country_id ASC;