-- SQL Aliases
-- SQL aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.



SELECT CustomerID AS ID
FROM Customers;



-- Syntax
-- When alias is used on column:

SELECT column_name AS alias_name
FROM table_name;



-- Alias for Columns
-- The following SQL statement creates two aliases, one for the CustomerID
-- column and one for the CustomerName column:

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;




-- Using Aliases With a Space Character
-- If you want your alias to contain one or more spaces, like "My Great Products",
-- surround your alias with square brackets or double quotes.
-- Using [square brackets] for aliases with space characters:

SELECT ProductName AS [My Great Products]
FROM Products;




-- Concatenate Columns
-- The following SQL statement creates an alias named "Address" that combine four 
-- columns (Address, PostalCode, City and Country):

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;