SELECT
A.customer_id,
A.first_name,
A.last_name,
B.address,
C.city,
D.country
FROM customer A
JOIN address B ON A.address_id = B.address_id
JOIN city C ON B.city_id = C.city_id
JOIN country D ON C.country_id = D.country_id
WHERE D.country = 'Japan';