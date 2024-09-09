SELECT COUNT(category_id) AS 'category_id' FROM products
WHERE price > 8
GROUP BY category_id
HAVING category_id = 2;

-- OR --

SELECT COUNT(category_id) AS 'category_id' FROM products
WHERE price > 8 AND category_id = 2;