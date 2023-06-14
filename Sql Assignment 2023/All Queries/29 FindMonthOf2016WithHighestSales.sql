-- 29.Find the month in the year 2016 with the highest total sales:


/* This query retrieves the month and total sales for the highest-selling month in the year 2016. It calculates the total sales by multiplying the quantity of items in each order by their corresponding prices. 
The results are grouped by the order date, and the query returns only the highest-selling month by ordering the results by total sales in descending order and limiting the output to one row. */

SELECT MONTH(order_date) AS month, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE YEAR(order_date) = 2016
GROUP BY MONTH(order_date)
ORDER BY total_sales DESC
LIMIT 1;