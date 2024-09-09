-- 05. Find Towns with Name Length --

SELECT name FROM towns
WHERE CHAR_LENGTH(name) = 5 OR CHAR_LENGTH(name) = 6
ORDER BY name;

-- OR --

SELECT name FROM towns
WHERE LENGTH(name) = 5 OR LENGTH(name) = 6
ORDER BY name;