-- The SQL IN Operator
-- The IN operator allows you to specify multiple values in a WHERE clause.
-- The IN operator is a shorthand for multiple OR conditions.


-- Return all customers from 'Germany', 'France', or 'UK'

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');



-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);



-- NOT IN
-- By using the NOT keyword in front of the IN operator, 
-- you return all records that are NOT any of the values in the list.
-- Return all customers that are NOT from 'Germany', 'France', or 'UK':

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');