-- 01. Find Book Titles --

SELECT title FROM books
WHERE title LIKE 'The%'
ORDER BY id ASC;