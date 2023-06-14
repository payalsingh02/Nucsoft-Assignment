-- 18.Find all employees who report to 'Andrew Fuller':


/*
This query selects the employee ID, first name, and last name of employees who report to a specific manager. 
The manager's information is obtained by performing a subquery to retrieve the employee ID of a specific person (Andrew Fuller in this case). 
The main query then filters the employees based on the retrieved manager's employee ID. In simpler terms, the query finds the employees who report to a specific manager (Andrew Fuller) and retrieves their basic information.
*/

SELECT employees.*
FROM employees
INNER JOIN employees AS manager ON employees.reports_to = manager.employee_id
WHERE manager.last_name = 'Fuller' AND manager.first_name = 'Andrew';