-- 30.Find the employee who processed the most orders in August 2016:


/* This query retrieves information about the employee with the highest number of orders placed during August 2016. It selects the employee's ID, first name, and last name from the "employees" table, and counts the number of orders they have placed during the specified date range. The results are grouped by the employee's ID, first name, and last name, and sorted in descending order based on the total number of orders. 
Finally, the query limits the result to only the top employee with the highest number of orders during that period. *
*/


SELECT employees.*, COUNT(orders.order_id) AS total_orders
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
WHERE YEAR(orders.order_date) = 2016 AND MONTH(orders.order_date) = 8
GROUP BY employees.employee_id
ORDER BY total_orders DESC
LIMIT 1;