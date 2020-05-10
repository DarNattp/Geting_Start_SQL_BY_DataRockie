SELECT DISTINCT
release_year,
title,
rating,
store_id
FROM film A
JOIN inventory B ON A.film_id = B.film_id
WHERE A.film_id IN (
SELECT film_id
FROM inventory
GROUP BY 1
HAVING COUNT(DISTINCT store_id) = 1
)
ORDER BY title;