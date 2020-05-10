SELECT
A.store_id,
B.address,
COUNT(*) AS totalN,
ROUND(SUM(D.amount), 2) AS totalSales
FROM store A
JOIN address B ON A.address_id = B.address_id
JOIN staff C ON A.store_id = C.store_id
JOIN payment D ON C.staff_id = D.staff_id
GROUP BY 1, 2
ORDER BY 4 DESC;
