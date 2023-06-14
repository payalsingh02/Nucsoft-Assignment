-- 6.Get the customers who have placed more than 10 orders:

/*
This query retrieves information about customers who have placed more than 10 orders. It selects the customer ID, contact name, and counts the number of orders placed by each customer. 
The results are grouped by the customer ID and contact name. Only customers with more than 10 orders are included in the final result
*/

SELECT customers.*
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
HAVING COUNT(orders.order_id) > 10;
