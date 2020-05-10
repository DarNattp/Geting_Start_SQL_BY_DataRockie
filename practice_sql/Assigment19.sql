SELECT
rental_id,
rental_date,
return_date,
CAST(JULIANDAY(return_date) - JULIANDAY(rental_date) AS INT) AS
rent_days,
CAST((JULIANDAY(return_date) - JULIANDAY(rental_date)) * 24 AS INT) AS
rent_hours
FROM rental
WHERE return_date IS NOT NULL
ORDER BY rent_hours DESC;
