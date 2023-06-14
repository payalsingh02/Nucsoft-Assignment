-- 27.Find the average quantity of products ordered in each order:

/* This query retrieves the order ID and the average quantity of items for each order from the "order_details" table. 
It calculates the average quantity by grouping the records based on the order ID. The result is a summary that shows the average quantity for each order.*/


SELECT order_id, AVG(quantity) AS average_quantity
FROM order_details
GROUP BY order_id;