SELECT name, SUBSTRING(start, 1, CHAR_LENGTH(start) - 16) AS start FROM games
WHERE YEAR(start) = 2011 OR YEAR(start) = 2012
ORDER BY start LIMIT 50;  