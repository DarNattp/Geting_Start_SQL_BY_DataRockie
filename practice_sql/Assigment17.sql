SELECT
film.title,
category.name,
SUM(amount) AS totalSales
FROM film
JOIN inventory USING(film_id)
JOIN rental USING(inventory_id)
JOIN payment USING(rental_id)
JOIN film_category USING(film_id)
JOIN category USING(category_id)
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;
