-- 2.Find all suppliers who provide products in the 'Seafood' category:


/*
This query retrieves information about suppliers who provide seafood products by joining the "suppliers," "products," and "categories" tables. 
It filters the results to include only rows where the category name is 'Seafood'. 
The result includes details about the suppliers of seafood products.
*/


SELECT DISTINCT suppliers.*
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN categories ON products.category_id = categories.category_id
WHERE categories.category_name = 'Seafood';