CREATE PROCEDURE udp_first_name_to_upper_case (letter CHAR(1))
BEGIN
	UPDATE athletes AS a
	SET a.first_name = UPPER(first_name)
	WHERE a.first_name LIKE CONCAT('%', letter);
END;