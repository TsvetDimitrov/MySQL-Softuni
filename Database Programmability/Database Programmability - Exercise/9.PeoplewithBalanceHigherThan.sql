-- 9. People with Balance Higher Than --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_get_holders_with_balance_higher_than (salary DECIMAL(16,4))
BEGIN
	SELECT first_name, last_name  FROM account_holders AS ah
    JOIN accounts AS a ON ah.id = a.account_holder_id
	GROUP BY  ah.id, ah.first_name, ah.last_name
    HAVING SUM(a.balance) > salary
    ORDER BY ah.id;
END==

CALL usp_get_holders_with_balance_higher_than(7000);
