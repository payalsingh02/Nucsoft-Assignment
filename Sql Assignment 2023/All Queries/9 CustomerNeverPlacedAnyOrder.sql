-- 9.Find the customers who have not placed any orders:

/*
This query retrieves customer IDs and contact names from the "customers" table. It uses a LEFT JOIN with the "orders" table to find customers who have not placed any orders. 
The WHERE clause filters the results to only include customers with no corresponding order IDs. In simpler terms, the query finds customers who have not made any orders.
*/

SELECT customers.*
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;