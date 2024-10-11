SELECT c.name, c.currency, COUNT(*) AS 'booked_tickets' FROM flights_passengers AS fp
    JOIN flights AS f on f.id = fp.flight_id
    JOIN countries c on c.id = f.destination_country
GROUP BY f.destination_country
HAVING booked_tickets >= 20
ORDER BY booked_tickets desc;