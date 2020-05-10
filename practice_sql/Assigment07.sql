-- look at distinct values
SELECT DISTINCT rating FROM film;
-- count each rating in film
SELECT
rating,
COUNT(*) n
FROM film
GROUP BY 1;
