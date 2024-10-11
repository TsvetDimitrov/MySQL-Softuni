DELETE f FROM flights AS f
LEFT JOIN flights_passengers AS fp ON fp.flight_id = f.id
WHERE fp.passenger_id IS NULL;
