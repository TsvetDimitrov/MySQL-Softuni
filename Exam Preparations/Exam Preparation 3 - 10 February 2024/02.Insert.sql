INSERT INTO preserves(name, latitude, longitude, area, type, established_on)
SELECT
	(CONCAT(p.name, ' is in South Hemisphere')) cn,
	p.latitude,
    p.longitude,
    p.area * p.id,
    LOWER(p.type),
    established_on
FROM preserves AS p
WHERE p.latitude < 0;