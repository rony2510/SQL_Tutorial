-- The SQL UPDATE Statement
-- The UPDATE statement is used to modify the existing records in a table.
-- UPDATE Syntax

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;



-- UPDATE Table
-- The following SQL statement updates the first customer (CustomerID = 1) with
-- a new contact person and a new city.

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;