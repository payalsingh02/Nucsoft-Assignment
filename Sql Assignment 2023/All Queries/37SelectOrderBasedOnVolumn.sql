-- 37.Classify products based on their sales volume such that TotalQuantity > 1000 is classified as 'High Sales'. If TotalQuantity > 500, it is classified as 'Medium Sales', and for all other cases, it is classified as 'Lower Sales':

/* This query retrieves the product name, calculates the total quantity of each product sold, and assigns a sales category based on the total quantity.
The sales categories are 'High Sales' for products with a total quantity greater than 1000, 'Medium Sales' for products with a total quantity greater than 500, and 'Lower Sales' for the rest.
The query joins the "products" table with the "order_details" table using the product ID. 
It then groups the results by the product ID and name. The final result is ordered in descending order based on the total quantity of each product sold. */

SELECT products.product_id, products.product_name, SUM(order_details.quantity) AS total_quantity,
  CASE
    WHEN SUM(order_details.quantity) > 1000 THEN 'High Sales'
    WHEN SUM(order_details.quantity) > 500 THEN 'Medium Sales'
    ELSE 'Lower Sales'
  END AS sales_category
FROM products
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_id, products.product_name;