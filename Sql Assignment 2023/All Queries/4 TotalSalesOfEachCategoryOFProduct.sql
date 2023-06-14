-- 4.Find the total sales (Quantity * Unit_Price) for each category of products:

/*
This query calculates the total sales for each category by multiplying the quantity of each product sold with its unit price, and then summing up those values. 
It retrieves the category name and the corresponding total sales. The query achieves this by joining the "categories," "products," and "order_details" tables based on their respective IDs.
 It groups the results by the category name to provide the total sales figure for each category.
*/

SELECT categories.category_name, SUM(order_details.quantity * products.unit_price) AS total_sales
FROM order_details
INNER JOIN products ON order_details.product_id = products.product_id
INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name;
