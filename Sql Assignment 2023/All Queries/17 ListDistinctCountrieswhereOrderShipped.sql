-- 17.List all the distinct countries to which orders have been shipped:

/*
This query retrieves a list of unique ship countries from the "orders" table. 
In simpler terms, it shows the distinct or unique countries where orders have been shipped to.
*/

SELECT DISTINCT ship_country
FROM orders;