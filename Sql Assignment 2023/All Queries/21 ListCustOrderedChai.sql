-- 21.Get the list of customers who have ordered the 'Chai' product:

/*
This query retrieves the customer IDs and contact names of customers who have placed orders for a product named 'Chai'. 
It combines information from the "customers," "orders," "order_details," and "products" tables using JOIN statements. 
The WHERE clause filters the results to include only the rows where the product name is 'Chai'. In summary, the query identifies customers who have ordered the 'Chai' product and retrieves their customer IDs and contact names.
*/

SELECT customers.*
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
INNER JOIN order_details ON orders.order_id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.product_id
WHERE products.product_name = 'Chai';