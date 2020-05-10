SELECT
(SELECT COUNT(*) FROM actor) AS actor,
(SELECT COUNT(*) FROM film) AS film
;
