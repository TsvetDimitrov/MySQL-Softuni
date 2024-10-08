-- 08. Find Full Name --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_get_holders_full_name ()
BEGIN
	SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' FROM account_holders
    ORDER BY full_name, id;
END==

CALL usp_get_holders_full_name;
