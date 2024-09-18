-- 11. Calculating Interest --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE FUNCTION ufn_calculate_future_value (sum DECIMAL(16,4), yearly_interest_rate DOUBLE, number_of_years INT)
    RETURNS DECIMAL(19, 4)
    DETERMINISTIC
BEGIN
    DECLARE future_value DECIMAL(19, 4);
    SET future_value = sum * POWER(1 + yearly_interest_rate, number_of_years);
    RETURN future_value;
END;==

DELIMITER ==
CREATE PROCEDURE usp_calculate_future_value_for_account(`account_id` INT,`interest_rate` DECIMAL(19,4))
BEGIN
    SELECT
        a.id AS `account_id`,
        ah.first_name,
        ah.last_name,
        a.balance AS `current_balance`,
        ufn_calculate_future_value(a.balance, interest_rate, 5) AS `balance_in_5_years`
    FROM account_holders AS ah
        JOIN accounts AS a ON ah.id = a.account_holder_id
    WHERE a.id = account_id;
END;==

CALL usp_calculate_future_value_for_account(1, 0.1);