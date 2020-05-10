SELECT
A.store_id,
address,
STRFTIME('%Y%m', payment_date) AS monthId,
COUNT(*) AS totalN,
ROUND(SUM(D.amount), 2) AS totalSales
FROM store A
JOIN address B ON A.address_id = B.address_id
JOIN staff C ON A.store_id = C.store_id
JOIN payment D ON C.staff_id = D.staff_id
GROUP BY 1, 2, 3
HAVING monthId LIKE '2005%'
ORDER BY 1, 3;
