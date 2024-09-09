SELECT COUNT(id) AS 'id' FROM wizzard_deposits;

-- OR -- 

SELECT id FROM wizzard_deposits
ORDER BY id DESC
LIMIT 1;
