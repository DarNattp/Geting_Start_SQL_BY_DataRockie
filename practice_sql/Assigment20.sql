SELECT
payment_date,
ROUND(amount, 2) AS amount,
ROUND(SUM(amount) OVER(ORDER BY payment_date), 2) AS rollAmt
FROM (
SELECT
STRFTIME('%Y-%m', payment_date) AS payment_date,
SUM(amount) AS amount
FROM payment
GROUP BY 1
);