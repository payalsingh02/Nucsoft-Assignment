-- 1.Get the total number of orders placed by each customer:

/*
The query SELECT COUNT(order_id) FROM orders; retrieves the count of the order_id column from the orders table.
In other words, it calculates the total number of rows or records in the orders table. The result of this query will be a single value representing the count of order IDs present in the table.
*/


SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

