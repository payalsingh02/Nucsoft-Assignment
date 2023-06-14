-- 24.Find the order with the highest total cost:


/* The given query calculates the total cost of each order by multiplying the quantity of each item in the order by its price.
It then groups the results by order ID and orders them in descending order based on the total cost.
Finally, it selects the order with the highest total cost using the LIMIT clause and returns the order ID and the corresponding total cost.*/

SELECT orders.*, SUM(order_details.quantity * products.unit_price) AS total_cost
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY orders.order_id
ORDER BY total_cost DESC
LIMIT 1;
