SELECT DISTINCT
A.first_name,
A.last_name,
B.address,
B.postal_code
FROM customer A
JOIN address B ON A.address_id = B.address_id
JOIN rental C ON A.customer_id = C.customer_id
WHERE C.return_date IS NULL
ORDER BY 1;
