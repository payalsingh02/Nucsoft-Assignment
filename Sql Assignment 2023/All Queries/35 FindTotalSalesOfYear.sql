-- 35.Find the total sales for each year:

/* The given query calculates the total sales for each year based on the quantity of products multiplied by their respective product IDs in the order details. 
It joins the "orders" and "order_details" tables using the order ID. The results are then grouped by the year of the order date and ordered in ascending order by the order year. 
*/

SELECT YEAR(order_date) AS order_year, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM orders
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
GROUP BY YEAR(order_date);