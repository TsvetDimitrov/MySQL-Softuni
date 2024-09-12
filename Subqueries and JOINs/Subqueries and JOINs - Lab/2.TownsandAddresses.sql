-- 2. Towns and Addresses --

SELECT towns.town_id, towns.name AS 'town_name', addresses.address_text FROM towns
JOIN addresses ON towns.town_id = addresses.town_id
WHERE towns.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY towns.town_id, addresses.address_id;