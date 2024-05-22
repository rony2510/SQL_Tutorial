-- The SQL SELECT TOP Clause
-- The SELECT TOP clause is used to specify the number of records to return.
-- The SELECT TOP clause is useful on large tables with thousands of records.
-- Returning a large number of records can impact performance.
-- Select only the first 3 records of the Customers table:

SELECT TOP 3 * FROM Customers;



-- LIMIT
-- The following SQL statement shows the equivalent example for MySQL:
-- Select the first 3 records of the Customers table:

SELECT * FROM Customers
LIMIT 3;



-- SQL TOP PERCENT Example
-- The following SQL statement selects the first 50% of the records
-- from the "Customers" table (for SQL Server/MS Access):

SELECT TOP 50 PERCENT * FROM Customers;