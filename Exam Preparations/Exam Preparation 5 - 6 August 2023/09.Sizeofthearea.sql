SELECT address,
	(CASE
    WHEN p.area <= 100 THEN 'small'
    WHEN p.area > 100 AND p.area <= 200 THEN 'medium'
    WHEN p.area > 200 AND p.area <= 500 THEN 'large'
    WHEN p.area > 500 THEN 'extra large'
	END) AS 'area'
    FROM properties AS p
    ORDER BY p.area ASC, p.address DESC;
    