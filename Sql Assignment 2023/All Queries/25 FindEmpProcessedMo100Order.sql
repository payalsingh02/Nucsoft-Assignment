-- 25.Find the employees who have processed more than 100 orders:

/* This query retrieves the Employees who have processed top 10 most popular orders */

SELECT employees.*
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
HAVING COUNT(orders.order_id) > 100;