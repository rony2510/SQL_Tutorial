-- The NOT Operator
-- The NOT operator is used in combination with other operators to give the opposite result,
-- also called the negative result.
-- In the select statement below we want to return all customers that are NOT from Spain:
-- Select only the customers that are NOT from Spain:

SELECT * FROM Customers
WHERE NOT Country = 'Spain';



-- Syntax

SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;



-- NOT LIKE
-- Select customers that does not start with the letter 'A':

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';



-- NOT BETWEEN
-- Select customers with a customerID not between 10 and 60:

SELECT * FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;



-- NOT IN
-- Select customers that are not from Paris or London:

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London');