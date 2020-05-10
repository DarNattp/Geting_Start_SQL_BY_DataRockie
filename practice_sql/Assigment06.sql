SELECT
first_name,
last_name,
COUNT(*) n
FROM actor A
JOIN film_actor B ON A.actor_id = B.actor_id
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;
