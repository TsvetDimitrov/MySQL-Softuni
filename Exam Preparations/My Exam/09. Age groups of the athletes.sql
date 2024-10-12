SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'full_name',
	(CASE
    WHEN a.age <= 18 THEN 'Teenager'
    WHEN a.age > 18 AND a.age <= 25 THEN 'Young adult'
    WHEN a.age >= 26 THEN 'Adult'
	END) AS 'age_group'
    FROM athletes AS a
    ORDER BY a.age DESC, first_name;
    