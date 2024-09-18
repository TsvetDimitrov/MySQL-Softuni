-- 12. Deposit Money --
-- Please submit the solution solution without the Delimeter and the symbols --

DELIMITER ==
CREATE PROCEDURE usp_deposit_money(`account_id` INT,`money_amount` DECIMAL(19,4))
BEGIN
    START TRANSACTION;
    IF ((SELECT COUNT(*) FROM accounts WHERE id = account_id) < 1 OR money_amount < 0) THEN
        ROLLBACK;
    ELSE
        UPDATE accounts SET balance = balance + money_amount WHERE id = account_id;
        COMMIT;
    END IF;
END;==