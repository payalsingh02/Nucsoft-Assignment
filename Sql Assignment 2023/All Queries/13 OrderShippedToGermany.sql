-- 13.List all orders shipped to 'Germany':

/*
The query selects specific columns from the "orders" and "customers" tables. It combines the information by matching the customer ID between the two tables. 
The WHERE clause filters the results to only include customers from Germany. The result includes the order ID, order date, customer ID, contact name, and country for orders made by customers in Germany.
*/

SELECT orders.*
FROM orders
INNER JOIN shippers ON orders.ship_via = shippers.shipper_id
WHERE shippers.country = 'Germany';