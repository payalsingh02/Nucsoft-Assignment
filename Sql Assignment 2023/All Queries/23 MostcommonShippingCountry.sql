-- 23.Find the most common shipping country:

/* This query retrieves the country with the highest number of shipments from the "orders" table. 
It counts the number of orders for each country, groups them by country, and then orders the result in descending order based on the total number of shipments. 
Finally, it limits the result to only the country with the highest number of shipments. */

SELECT ship_country, COUNT(*) AS count
FROM orders
GROUP BY ship_country
ORDER BY count DESC
LIMIT 1;