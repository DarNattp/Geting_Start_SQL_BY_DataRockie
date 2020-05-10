SELECT
rating,
n,
n/ CAST(totaln AS REAL) AS ratingPercent
FROM (
SELECT
rating,
COUNT(*) n,
(SELECT COUNT(*) FROM film) AS totaln
FROM film
GROUP BY 1
)
ORDER BY 2 DESC;