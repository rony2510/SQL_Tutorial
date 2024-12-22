-- Written Order of SQL Clauses
-- When writing SQL queries, the order typically looks like this:

SELECT column_list
FROM table_name
[WHERE condition]
[GROUP BY column_list]
[HAVING condition]
[ORDER BY column_list]
[LIMIT n];








SELECT [column_name] FROM [table_name]
WHERE [condition] ORDER BY [column_name] [ASC|DESC]
LIMIT [number];








-- create a database "db"
CREATE DATABASE db;










-- drop the database "db"
DROP DATABASE db;








-- show all databases
SHOW DATABASES;






-- create table with "id","name" column
CREATE TABLE tbl(
	id int,
    name varchar(255)
);






-- drop table "tbl". it completely removes TABLE from the database
DROP TABLE tbl;







-- delete entries from the table "tbl2". it keeps the table but deletes entries
TRUNCATE TABLE tbl2;



-- only insert data in the "CustomerName", "City", and "Country" 
-- columns (CustomerID will be updated automatically):
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');





--  show everything from "categories"
SELECT * FROM categories;



-- show everything from "categories" where "categoryid%2=0"
SELECT * FROM categories
WHERE categoryid%2=0;



-- show everything from "customers" in "customerid" descending
SELECT * FROM customers
ORDER BY customerid DESC;



-- show everything from "categories" where "categoryid%2=0" and city is "London"
SELECT * FROM customers WHERE customerid%2=0 AND city="London";



SELECT * FROM customers WHERE customerid%2=0 AND (city="London" OR country="Germany") ORDER BY customerid DESC;



-- select distinct city from customers
SELECT DISTINCT city FROM customers;



-- return total count of distinct city
SELECT COUNT(DISTINCT city) FROM customers;



SELECT COUNT(DISTINCT city) FROM customers WHERE CustomerID%2=0;



-- show distinct city with country
SELECT DISTINCT city,country
FROM customers;



SELECT * FROM customers
WHERE country="germany";



-- show address and city
SELECT address,city FROM customers
WHERE country="germany";



-- by default ORDER BY is ASC
SELECT address,city FROM customers
WHERE country="germany"
ORDER BY city;



SELECT Address,City FROM customers ORDER BY City DESC;



SELECT address,city FROM customers
WHERE country="germany"
ORDER BY city DESC;



-- first city ASC then address DESC
SELECT address,city from customers
WHERE country="germany"
order BY city ASC, address DESC;




SELECT * FROM customers
WHERE country="uk" and city="london";



SELECT * FROM customers
WHERE country="uk" AND (customerid<5 or customerid>10);



SELECT * FROM customers
WHERE country="uk" or country="spain" or country LIKE "A%";



-- NOT IN London
SELECT * FROM customers
WHERE city NOT IN ("london");



-- customerid inclusive(5<=id<=10)
SELECT * FROM customers
WHERE customerid BETWEEN 5 AND 10;



-- contactname starts with "C"
SELECT * FROM suppliers
WHERE contactname like "C%";



-- contactname starts with "C" or ends with "B"
SELECT * FROM customers
WHERE CustomerName LIKE "B%" OR CustomerName LIKE "%B";



-- contactname (starts with "C" and min length 2) or starts with "Pe"
SELECT * FROM suppliers
WHERE contactname like "C_%" or contactname LIKE "Pe%";



-- show 5 results
SELECT * FROM customers LIMIT 5;



-- show 3 results
SELECT * FROM products WHERE
price<20 LIMIT 3;



-- column name as Cname
SELECT CustomerName AS Cname FROM customers;



SELECT max(price) FROM products;
SELECT min(price) FROM products;
SELECT AVG(price) FROM products;
SELECT SUM(price) FROM products;
SELECT COUNT(price) FROM products;
SELECT COUNT(DISTINCT supplierid) FROM products;
SELECT COUNT(DISTINCT supplierid) AS cnt FROM products;



INSERT INTO blog
(title,content) VALUES ("please","essay");



INSERT INTO blog
VALUES(20,"pray","quite");



INSERT INTO blog
(title,content)
VALUES("yes","abc"),
("no","xyz"),
("me","you");









This SQL keywords reference contains the reserved words in SQL.
SQL Keywords

ADD 	Adds a column in an existing table
ADD CONSTRAINT	    Adds a constraint after a table is already created
ALL	    Returns true if all of the subquery values meet the condition
ALTER	    Adds, deletes, or modifies columns in a table, or changes the data type of a column in a table
ALTER   COLUMN	Changes the data type of a column in a table
ALTER TABLE	    Adds, deletes, or modifies columns in a table
AND	    Only includes rows where both conditions is true
ANY	    Returns true if any of the subquery values meet the condition
AS	    Renames a column or table with an alias
ASC	    Sorts the result set in ascending order
BACKUP DATABASE	    Creates a back up of an existing database
BETWEEN	    Selects values within a given range
CASE	    Creates different outputs based on conditions
CHECK	    A constraint that limits the value that can be placed in a column
COLUMN	    Changes the data type of a column or deletes a column in a table
CONSTRAINT	    Adds or deletes a constraint
CREATE	    Creates a database, index, view, table, or procedure
CREATE DATABASE	    Creates a new SQL database
CREATE INDEX	    Creates an index on a table (allows duplicate values)
CREATE OR REPLACE VIEW	Updates a view
CREATE TABLE	Creates a new table in the database
CREATE PROCEDURE	Creates a stored procedure
CREATE UNIQUE INDEX	    Creates a unique index on a table (no duplicate values)
CREATE VIEW	    Creates a view based on the result set of a SELECT statement
DATABASE	Creates or deletes an SQL database
DEFAULT	    A constraint that provides a default value for a column
DELETE	    Deletes rows from a table
DESC	    Sorts the result set in descending order
DISTINCT	Selects only distinct (different) values
DROP	Deletes a column, constraint, database, index, table, or view
DROP    COLUMN	Deletes a column in a table
DROP CONSTRAINT	    Deletes a UNIQUE, PRIMARY KEY, FOREIGN KEY, or CHECK constraint
DROP DATABASE	    Deletes an existing SQL database
DROP DEFAULT	    Deletes a DEFAULT constraint
DROP INDEX	    Deletes an index in a table
DROP TABLE	    Deletes an existing table in the database
DROP VIEW	    Deletes a view
EXEC	    Executes a stored procedure
EXISTS	    Tests for the existence of any record in a subquery
FOREIGN KEY	    A constraint that is a key used to link two tables together
FROM	    Specifies which table to select or delete data from
FULL OUTER JOIN	    Returns all rows when there is a match in either left table or right table
GROUP BY	    Groups the result set (used with aggregate functions: COUNT, MAX, MIN, SUM, AVG)
HAVING	    Used instead of WHERE with aggregate functions
IN	    Allows you to specify multiple values in a WHERE clause
INDEX	    Creates or deletes an index in a table
INNER JOIN	    Returns rows that have matching values in both tables
INSERT INTO	    Inserts new rows in a table
INSERT INTO SELECT	    Copies data from one table into another table
IS NULL	    Tests for empty values
IS NOT NULL	Tests for non-empty values
JOIN	Joins tables
LEFT JOIN	Returns all rows from the left table, and the matching rows from the right table
LIKE	Searches for a specified pattern in a column
LIMIT	Specifies the number of records to return in the result set
NOT	Only includes rows where a condition is not true
NOT NULL	A constraint that enforces a column to not accept NULL values
OR	Includes rows where either condition is true
ORDER BY	Sorts the result set in ascending or descending order
OUTER JOIN	Returns all rows when there is a match in either left table or right table
PRIMARY KEY	A constraint that uniquely identifies each record in a database table
PROCEDURE	A stored procedure
RIGHT JOIN	Returns all rows from the right table, and the matching rows from the left table
ROWNUM	Specifies the number of records to return in the result set
SELECT	Selects data from a database
SELECT DISTINCT	Selects only distinct (different) values
SELECT INTO	Copies data from one table into a new table
SELECT TOP	Specifies the number of records to return in the result set
SET	Specifies which columns and values that should be updated in a table
TABLE	Creates a table, or adds, deletes, or modifies columns in a table, or deletes a table or data inside a table
TOP	Specifies the number of records to return in the result set
TRUNCATE TABLE	Deletes the data inside a table, but not the table itself
UNION	Combines the result set of two or more SELECT statements (only distinct values)
UNION ALL	Combines the result set of two or more SELECT statements (allows duplicate values)
UNIQUE	A constraint that ensures that all values in a column are unique
UPDATE	Updates existing rows in a table
VALUES	Specifies the values of an INSERT INTO statement
VIEW	Creates, updates, or deletes a view
WHERE	Filters a result set to include only records that fulfill a specified condition