-- The SQL HAVING Clause
-- The HAVING clause was added to SQL because the WHERE keyword cannot be 
-- used with aggregate functions.
-- HAVING Syntax

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);




SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(customerid) DESC;