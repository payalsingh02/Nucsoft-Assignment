-- 5.List the employees and the number of orders each employee has taken:

/*
The query combines data from the "employee_territories" and "orders" tables.
It counts the number of orders for each employee and groups the results by the employee ID. 
The use of a left join ensures that all employees from the "employee_territories" table are included, even if they have no orders.
*/

SELECT employees.employee_id, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, COUNT(orders.order_id) AS total_orders
FROM employees
LEFT JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id;