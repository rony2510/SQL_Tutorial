-- SQL SELECT Statement
-- Select city from the Customers table:

SELECT City FROM Customers;


SELECT column1, column2
FROMROM table_name;

-- Here, column1, column2, ... are the field names of the table you want to select data from.
-- The table_name represents the name of the table you want to select data from.


-- Return all the columns from the Customers table:

SELECT * FROM Customers;


-- The SQL SELECT DISTINCT Statement
-- The SELECT DISTINCT statement is used to return only distinct (different) values.

SELECT DISTINCT Country FROM Customers;


-- Inside a table, a column often contains many duplicate values;
-- and sometimes you only want to list the different (distinct) values.

SELECT DISTINCT column1,column2,column3 FROM Customers;


-- Count Distinct
-- By using the DISTINCT keyword in a function called COUNT,
-- we can return the number of different countries.

SELECT COUNT(DISTINCT Country) FROM Customers;






-- To retrieve the details of books that have a NULL rating, you can use the following SQL query:

SELECT book_id, title, author, published_year
FROM books
WHERE rating IS NULL;




-- Write a query to group the employees by their department and display the total number of employees (as total_employees) in each department.
select department, count(*) as total_employees
from Employees
group by department;