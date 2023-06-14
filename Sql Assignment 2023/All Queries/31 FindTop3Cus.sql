-- 31.Find the top 3 customers who have ordered the most products:

/* This query retrieves the customer ID, contact name, and the total number of products ordered by each customer. 
It does so by joining the "customers" table with the "orders" table and the "order_details" table. The results are grouped by the customer ID and contact name. 
The query is then sorted in descending order based on the total number of products ordered. Finally, only the top three results are returned. 
*/

SELECT customers.customer_id, CONCAT(customers.contact_name, ' (', customers.company_name, ')') AS customer_name, COUNT(order_details.product_id) AS total_products_ordered
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
GROUP BY customers.customer_id
ORDER BY total_products_ordered DESC
LIMIT 3;
