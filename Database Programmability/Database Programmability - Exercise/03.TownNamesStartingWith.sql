-- 03. Town Names Starting With --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_get_towns_starting_with (`start_characters` VARCHAR(45))
BEGIN
	SELECT name AS `town_name` FROM towns
    WHERE name LIKE CONCAT(start_characters, '%')
    ORDER BY name;
END==

CALL usp_get_towns_starting_with('b');