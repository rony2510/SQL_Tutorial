-- SQL JOIN
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.



-- inner join. Returns records that have matching values in both tables
SELECT * FROM customers
INNER JOIN orders
ON customers.CustomerID=orders.CustomerID;



-- Returns records that have matching values in both tables
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;



-- Different Types of SQL JOINs
-- Here are the different types of the JOINs in SQL:

-- (INNER) JOIN: Returns records that have matching values in both tables
-- LEFT (OUTER) JOIN: Returns all records from the left table, 
-- and the matched records from the right table
-- RIGHT (OUTER) JOIN: Returns all records from the right table, 
-- and the matched records from the left table
-- FULL (OUTER) JOIN: Returns all records when there is a 
-- match in either left or right table
-- SQL INNER JOIN  SQL LEFT JOIN  SQL RIGHT JOIN  SQL FULL OUTER JOIN



-- Returns all records from the left table, and the matched records from the right table
SELECT * FROM customers
LEFT JOIN orders
ON customers.CustomerID=orders.CustomerID;



-- Returns all records from the left table, and the matched records from the right table
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;



-- Returns all records from the right table, and the matched records from the left table
SELECT * FROM customers
RIGHT JOIN orders
ON customers.CustomerID=orders.CustomerID;



SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;



-- INNER JOIN
-- The INNER JOIN keyword selects records that have matching 
-- values in both tables.
-- Syntax



SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;



-- SQL LEFT JOIN Keyword
-- The LEFT JOIN keyword returns all records from the left table (table1),
-- and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.



-- LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;



SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;



-- SQL RIGHT JOIN Keyword
-- The RIGHT JOIN keyword returns all records from the right table (table2), 
-- and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.



-- RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;