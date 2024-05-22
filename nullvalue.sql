-- What is a NULL Value?
-- A field with a NULL value is a field with no value.
-- If a field in a table is optional, it is possible to insert a new record
-- or update a record without adding a value to this field. Then,
-- the field will be saved with a NULL value.



-- How to Test for NULL Values?
-- It is not possible to test for NULL values with comparison operators,
-- such as =, <, or <>.
-- We will have to use the IS NULL and IS NOT NULL operators instead.
-- IS NULL Syntax

SELECT column_names
FROM table_name
WHERE column_name IS NULL;

-- IS NOT NULL Syntax

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;



SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;



SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;