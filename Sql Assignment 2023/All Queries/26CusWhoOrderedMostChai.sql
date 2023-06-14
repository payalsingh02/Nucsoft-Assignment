-- 26.Find the customer who has ordered the most 'Chai' product:

/* This query retrieves the customer ID, contact name, and total quantity of a product called "Chai" that each customer has ordered. It joins the "customers" table with the "orders" table and the "order_details" table to get the relevant information. 
It then filters the results to only include orders for the "Chai" product. The results are grouped by customer ID and contact name and ordered in descending order based on the total quantity of Chai ordered. Finally, the query returns only the top result with the highest total quantity of Chai ordered. */

SELECT customers.*, SUM(order_details.quantity) AS total_chai_ordered
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai'
GROUP BY customers.customer_id
ORDER BY total_chai_ordered DESC
LIMIT 1;