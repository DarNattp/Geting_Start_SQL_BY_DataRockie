SELECT
first_name,
last_name,
LOWER(first_name || '.' || last_name) || '@sakila.com' AS email
FROM actor;
