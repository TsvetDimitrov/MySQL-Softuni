CREATE PROCEDURE udp_delay_flight (code VARCHAR(50))
BEGIN
	UPDATE flights AS f
	SET has_delay = 1, departure = ADDTIME(departure, "0:30:0.000000")
	WHERE f.flight_code = code;
END;