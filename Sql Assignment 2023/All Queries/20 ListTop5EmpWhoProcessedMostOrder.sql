-- 20.List the top 5 employees who have processed the most orders:

/*
This query retrieves information about employees by joining the "employees" and "orders" tables. 
It counts the total number of orders handled by each employee and selects the top 5 employees with the highest number of orders.
The result includes the employee ID, first name, last name, and the corresponding total number of orders.
*/ 

SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, COUNT(orders.order_id) AS total_orders
FROM employees
INNER JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
ORDER BY total_orders DESC
LIMIT 5;