CREATE PROCEDURE udp_increase_salaries_by_country (country_name VARCHAR(40))
BEGIN
	UPDATE workers w
	JOIN preserves AS p ON w.preserve_id = p.id
	JOIN countries_preserves AS cp ON cp.preserve_id = p.id
	JOIN countries AS c ON c.id = cp.country_id
	SET w.salary = w.salary * 1.05
	WHERE c.name = country_name;
END