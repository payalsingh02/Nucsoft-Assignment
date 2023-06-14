-- 14.Find the most expensive product in each category:


/*
This query retrieves the category name, product name, and unit price of products that have the highest unit price within their respective categories. 
In simpler terms, it finds the most expensive product in each category and displays its category name, product name, and unit price.
*/

SELECT categories.category_name, products.product_name, products.unit_price
FROM categories
INNER JOIN products ON categories.category_id = products.category_id
WHERE products.unit_price = (
  SELECT MAX(unit_price)
  FROM products AS p
  WHERE p.category_id = products.category_id
);