-- 7.Get the top 5 most sold products:

/*
This query retrieves information about the top 5 products with the highest total quantities ordered. It calculates the total quantity of each product by summing up the quantities from the "order_details" table. The results are grouped by the product name. 
The "ORDER BY TotalQuantity DESC" sorts the results in descending order based on the total quantity. Finally, the "LIMIT 5" clause limits the output to only the top 5 products with the highest total quantities ordered.
*/

SELECT products.*, SUM(order_details.quantity) AS total_sold
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id
ORDER BY total_sold DESC
LIMIT 5;