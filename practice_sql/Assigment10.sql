SELECT
SUBSTR(first_name,1,1) || LOWER(SUBSTR(first_name,2)) AS firstname,
SUBSTR(last_name,1,1) || LOWER(SUBSTR(last_name,2)) AS lastname,
LOWER(email) AS email
FROM customer;
