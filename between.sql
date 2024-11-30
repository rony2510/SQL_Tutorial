-- The SQL BETWEEN Operator
-- The BETWEEN operator selects values within a given range. 
-- The values can be numbers, text, or dates.
-- The BETWEEN operator is inclusive: begin and end values are included. 



-- Selects all products with a price between 10 and 20:

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;



-- Syntax
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;



-- NOT BETWEEN
-- To display the products outside the range of the previous example, 
-- use NOT BETWEEN:

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;



-- BETWEEN with IN
-- The following SQL statement selects all products with a price between 10 and 20.
-- In addition, the CategoryID must be either 1,2, or 3:

-- SELECT * FROM Products
-- WHERE Price BETWEEN 10 AND 20
-- AND CategoryID IN (1,2,3);



-- The following SQL statement selects all products with a ProductName 
-- between Carnarvon Tigers and Chef Anton's Cajun Seasoning:

SELECT * FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;



-- BETWEEN Dates
-- The following SQL statement selects all orders with an OrderDate between
-- '01-July-1996' and '31-July-1996':

SELECT * FROM Orders
WHERE OrderDate BETWEEN #07/01/1996# AND #07/31/1996#;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';






-- Explanation:
-- Single Quotes for Dates: Dates in SQL should be enclosed in single quotes (') to be interpreted correctly as string literals.
-- BETWEEN: Used to filter rows where the value falls within a specified range, inclusive.
-- ORDER BY: Specifies sorting of results by patient_id in descending order (DESC).
-- This query retrieves rows from the admissions table where:

-- patient_id is between 10 and 50 (inclusive), and
-- admission_date is between June 24, 2018, and December 24, 2018 (inclusive),
-- The results are sorted in descending order of patient_id.

SELECT * 
FROM admissions
WHERE (patient_id BETWEEN 10 AND 50) 
  AND (admission_date BETWEEN '2018-06-24' AND '2018-12-24')
ORDER BY patient_id DESC;
