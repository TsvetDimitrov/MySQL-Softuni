SET SQL_SAFE_UPDATES = 0;

UPDATE workers
SET salary = salary + 500
WHERE position_id IN (5, 8, 11, 13)