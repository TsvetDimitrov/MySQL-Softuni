SET SQL_SAFE_UPDATES = 0;

UPDATE flights 
SET airplane_id = airplane_id + 1
WHERE departure_country = 22;