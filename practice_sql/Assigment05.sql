SELECT * FROM actor
WHERE first_name REGEXP '^[PA]'
ORDER BY first_name;
SELECT * FROM actor
WHERE first_name LIKE 'P%' OR first_name LIKE 'A%'
ORDER BY first_name;