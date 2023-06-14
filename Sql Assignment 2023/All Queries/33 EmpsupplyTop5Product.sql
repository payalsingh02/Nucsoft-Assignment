-- 33.Find the suppliers who supply the top 5 most sold products:


/*This query retrieves the top 5 suppliers based on the total quantity of products ordered from them. 
It calculates the sum of the quantity of products ordered from each supplier by joining the "suppliers," "products," and "order_details" tables. 
The results are grouped by the supplier's ID and company name. 
The suppliers are then ordered in descending order based on the total quantity of products ordered, and only the top 5 suppliers are returned in the result.
*/

SELECT suppliers.supplier_id, suppliers.company_name, COUNT(order_details.product_id) AS total_sold_products
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN order_details ON products.product_id = order_details.product_id
GROUP BY suppliers.supplier_id, suppliers.company_name
ORDER BY total_sold_products DESC
LIMIT 5;