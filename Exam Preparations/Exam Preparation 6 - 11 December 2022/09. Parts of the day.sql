SELECT flight_code, departure, (
	CASE 
    WHEN DATE_FORMAT(f.departure,"%H:%i") BETWEEN '05:00' AND '12:00' THEN 'Morning'
    WHEN DATE_FORMAT(f.departure,"%H:%i") BETWEEN '12:00' AND '17:00' THEN 'Afternoon'
    WHEN DATE_FORMAT(f.departure,"%H:%i") BETWEEN '17:00' AND '21:00' THEN 'Evening'
    WHEN DATE_FORMAT(f.departure,"%H:%i") BETWEEN '21:00' AND '23:59' THEN 'Night'
	WHEN DATE_FORMAT(f.departure,"%H:%i") BETWEEN '00:00' AND '04:59' THEN 'Night'
    END
	) AS 'day_part' 
    FROM flights AS f
    ORDER BY f.flight_code desc;