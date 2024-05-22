-- The SQL MIN() and MAX() Functions
-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

-- Find the lowest price in the Price column:

SELECT MIN(Price)
FROM Products;



-- Find the highest price in the Price column:

SELECT MAX(Price)
FROM Products;



-- Syntax

SELECT MIN(column_name)
FROM table_name
WHERE condition;

SELECT MAX(column_name)
FROM table_name
WHERE condition;



-- Set Column Name (Alias)
-- When you use MIN() or MAX(), the returned column will not have a descriptive name.
-- To give the column a descriptive name, use the AS keyword:

SELECT MIN(Price) AS SmallestPrice
FROM Products;



-- Use MIN() with GROUP BY
-- Here we use the MIN() function and the GROUP BY clause, 
-- to return the smallest price for each category in the Products table:

SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;














-- The SQL COUNT() Function
-- The COUNT() function returns the number of rows that matches a specified criterion.
-- Find the total number of rows in the Products table:

SELECT COUNT(*)
FROM Products;



-- Syntax

SELECT COUNT(column_name)
FROM table_name
WHERE condition;



-- Specify Column
-- You can specify a column name instead of the asterix symbol (*).
-- If you specify a column name instead of (*), NULL values will not be counted.
-- Find the number of products where the ProductName is not null:

SELECT COUNT(ProductName)
FROM Products;



-- Add a WHERE Clause
-- You can add a WHERE clause to specify conditions:
-- Find the number of products where Price is higher than 20:

SELECT COUNT(ProductID)
FROM Products
WHERE Price > 20;



-- Ignore Duplicates
-- You can ignore duplicates by using the DISTINCT keyword in the COUNT() function.
-- If DISTINCT is specified, rows with
--  the same value for the specified column will be counted as one.
-- How many different prices are there in the Products table:

SELECT COUNT(DISTINCT Price)
FROM Products;


-- Use an Alias
-- Give the counted column a name by using the AS keyword.
-- Name the column "Number of records":

SELECT COUNT(*) AS [Number of records]
FROM Products;



-- Use COUNT() with GROUP BY
-- Here we use the COUNT() function and the GROUP BY clause, to return the
-- number of records for each category in the Products table:

SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;


















-- The SQL SUM() Function
-- The SUM() function returns the total sum of a numeric column.
-- Return the sum of all Quantity fields in the OrderDetails table:

SELECT SUM(Quantity)
FROM OrderDetails;


-- Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;



-- Add a WHERE Clause
-- You can add a WHERE clause to specify conditions:
-- Return the sum of the Quantity field for the product with ProductID 11:

SELECT SUM(Quantity)
FROM OrderDetails
WHERE ProductId = 11;



-- Use an Alias
-- Give the summarized column a name by using the AS keyword.
-- Name the column "total":

SELECT SUM(Quantity) AS total
FROM OrderDetails;



-- Use SUM() with GROUP BY
-- Here we use the SUM() function and the GROUP BY clause, 
-- to return the Quantity for each OrderID in the OrderDetails table:

SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;



-- SUM() With an Expression
-- The parameter inside the SUM() function can also be an expression.
-- If we assume that each product in the OrderDetails column costs 10 dollars, 
-- we can find the total earnings in dollars by multiply each quantity with 10:
-- Use an expression inside the SUM() function:

SELECT SUM(Quantity * 10)
FROM OrderDetails;














-- The SQL AVG() Function
-- The AVG() function returns the average value of a numeric column.
-- Find the average price of all products:

SELECT AVG(Price)
FROM Products;


-- Syntax
SELECT AVG(column_name)
FROM table_name
WHERE condition;



-- Use an Alias
-- Give the AVG column a name by using the AS keyword.
-- Name the column "average price":

SELECT AVG(Price) AS [average price]
FROM Products;



-- Use AVG() with GROUP BY
-- Here we use the AVG() function and the GROUP BY clause,
-- to return the average price for each category in the Products table:

SELECT AVG(Price) AS AveragePrice, CategoryID
FROM Products
GROUP BY CategoryID;