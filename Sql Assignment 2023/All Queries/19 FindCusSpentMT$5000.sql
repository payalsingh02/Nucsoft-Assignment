-- 19.Find the customers who have spent more than $5000 in total:


/*
This query retrieves the customer ID, contact name, and total amount spent by customers who have spent more than $5000 on orders. 
It combines data from the "customers," "orders," and "order_details" tables. By joining these tables based on their respective IDs, it calculates the sum of the quantity multiplied by the unit price for each order. 
The results are then grouped by customer ID and contact name. The "HAVING" clause filters the results to include only customers whose total spending exceeds $5000. 
In simpler terms, the query identifies customers who have spent a significant amount on orders and provides their ID, contact name, and total spending.
*/

SELECT customers.customer_id, CONCAT(customers.contact_name, ' (', customers.company_name, ')') AS customer_name, SUM(order_details.quantity * products.unit_price) AS total_spent
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY customers.customer_id
HAVING total_spent > 5000;
