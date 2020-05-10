SELECT
actor.first_name || ' ' || actor.last_name AS full_name,
ROUND(SUM(amount), 2) AS totalSales
FROM actor
JOIN film_actor USING(actor_id)
JOIN film USING(film_id)
JOIN inventory USING(film_id)
JOIN rental USING(inventory_id)
JOIN payment USING(rental_id)
GROUP BY 1
ORDER BY 2
LIMIT 10;
