-- 3.Get the total quantity of each product sold:


/*
This query calculates the total quantity of each product sold by summing up the quantities from the "order_details" table. 
It combines information from the "products" and"order_details" tables by matching the product IDs. The result groups the data 
by product name, showing the product name and its corresponding total quantity. In simpler terms, the query tells you how much 
of each product has been sold and displays it alongside the product names.
*/


SELECT product_id, SUM(quantity) AS total_quantity
FROM order_details
GROUP BY product_id;