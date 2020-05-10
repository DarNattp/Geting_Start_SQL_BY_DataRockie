SELECT
C.name,
A.film_id,
A.title,
A.release_year,
A.rating
FROM film A
JOIN film_category B ON A.film_id = B.film_id
JOIN category C ON B.category_id = C.category_id
AND A.rating = 'PG'
AND C.name = 'Comedy';
