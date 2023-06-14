-- 10.List all 'Orders' with 'Customer' details and 'Employee' who processed it:

/*
This query retrieves information about orders, including the order ID, order date, customer ID, customer's contact name, employee ID, and employee's first and last name. 
It combines data from the "orders," "customers," and "employees" tables by joining them based on matching IDs. The result provides a summary of the relationships between orders, customers, and employees, showing the relevant details from each table.
*/


SELECT orders.*, customers.*, CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
INNER JOIN employees ON orders.employee_id = employees.employee_id;
