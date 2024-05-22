-- The SQL OR Operator
-- The WHERE clause can contain one or more OR operators.
-- The OR operator is used to filter records based on more than one condition,
-- like if you want to return all customers from Germany but also those from Spain:
-- Select all customers from Germany or Spain:

SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';



-- Syntax

SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;



-- At Least One Condition Must Be True
-- The following SQL statement selects all fields from Customers where
-- either City is "Berlin", CustomerName starts with the letter "G" or Country is "Norway":

SELECT * FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';