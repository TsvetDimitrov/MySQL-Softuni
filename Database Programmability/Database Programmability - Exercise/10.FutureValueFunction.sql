-- 10. Future Value Function --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE FUNCTION ufn_calculate_future_value (sum DECIMAL(16,4), yearly_interest_rate DOUBLE, number_of_years INT)
    RETURNS DECIMAL(19, 4)
    DETERMINISTIC
BEGIN
    DECLARE future_value DECIMAL(19, 4);
    SET future_value = sum * POWER(1 + yearly_interest_rate, number_of_years);
    RETURN future_value;
END==