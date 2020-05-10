SELECT * FROM actor
WHERE first_name REGEXP '^P'; -- starts with P
SELECT * FROM actor
WHERE first_name LIKE 'P%'; -- same result as LIKE 'p%'
