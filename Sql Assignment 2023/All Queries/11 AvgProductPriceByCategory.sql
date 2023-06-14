-- 11.Calculate the average product price by category:

/*
This query calculates the average price of products within each category. It retrieves the category name and the corresponding average price. 
The query achieves this by joining the "products" and "categories" tables based on their respective IDs. 
It then groups the results by the category name to provide the average price for each category. 
In simpler terms, the query gives you the average price of products for each product category.
*/

SELECT categories.category_name, AVG(products.unit_price) AS average_price
FROM products
INNER JOIN categories ON products.category_id = categories.category_id
GROUP BY categories.category_name;
