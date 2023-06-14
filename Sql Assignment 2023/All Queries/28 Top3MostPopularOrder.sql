-- 28.Find the top 3 most popular categories of products ordered:

/* This query retrieves the top three categories with the highest number of orders. It counts the total number of orders for each category by joining the "categories," "products," and "order_details" tables. 
The results are grouped by the category name and ordered in descending order based on the total number of orders. Finally, the query limits the output to only the top three categories. */

SELECT categories.category_name, COUNT(*) AS order_count
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY categories.category_name
ORDER BY order_count DESC
LIMIT 3;