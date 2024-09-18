-- 15. Log Accounts Trigger --
-- Please submit the solution solution without the Delimeter and the symbols --

CREATE TABLE logs (
    log_id      INT AUTO_INCREMENT PRIMARY KEY,
    account_id  INT,
    old_sum     DECIMAL(19, 4),
    new_sum     DECIMAL(19, 4)
);

DELIMETER ==
CREATE TRIGGER trg_log_balance_change
    AFTER UPDATE ON accounts
    FOR EACH ROW
BEGIN
    IF OLD.balance <> NEW.balance THEN
        INSERT INTO logs (account_id, old_sum, new_sum)
        VALUES (NEW.id, OLD.balance, NEW.balance);
    END IF;
END;
==