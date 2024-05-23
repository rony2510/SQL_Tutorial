-- The SQL CREATE DATABASE Statement
-- The CREATE DATABASE statement is used to create a new SQL database.

-- Syntax
CREATE DATABASE databasename;
CREATE DATABASE testDB;



-- to see all databases available
SHOW DATABASES;


-- The SQL DROP DATABASE Statement
-- The DROP DATABASE statement is used to drop an existing SQL database.

-- Syntax
DROP DATABASE databasename;
DROP DATABASE testDB;



-- The SQL BACKUP DATABASE Statement
-- The BACKUP DATABASE statement is used in SQL Server to create
-- a full back up of an existing SQL database.

-- Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath';



-- The SQL BACKUP WITH DIFFERENTIAL Statement
-- A differential back up only backs up the parts of the database that 
-- have changed since the last full database backup.

-- Syntax
BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;

BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';




-- The SQL CREATE TABLE Statement
-- The CREATE TABLE statement is used to create a new table in a database.

-- Syntax
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);

CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);




-- Create Table Using Another Table
-- A copy of an existing table can also be created using CREATE TABLE.
-- The new table gets the same column definitions. 
-- All columns or specific columns can be selected.
-- If you create a new table using an existing table, the new table will be 
-- filled with the existing values from the old table.

-- Syntax
CREATE TABLE new_table_name AS
    SELECT column1, column2,...
    FROM existing_table_name
    WHERE ....;

CREATE TABLE TestTable AS
SELECT customername, contactname
FROM customers;



-- The SQL DROP TABLE Statement
-- The DROP TABLE statement is used to drop an existing table in a database.

-- Syntax
DROP TABLE table_name;

DROP TABLE Shippers;



-- SQL TRUNCATE TABLE
-- The TRUNCATE TABLE statement is used to delete the data inside a table, 
-- but not the table itself.

-- Syntax
TRUNCATE TABLE table_name;




-- SQL ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify 
-- columns in an existing table.
-- The ALTER TABLE statement is also used to add and drop various 
-- constraints on an existing table.

-- ALTER TABLE - ADD Column
-- To add a column in a table, use the following syntax:

ALTER TABLE table_name
ADD column_name datatype;

ALTER TABLE Customers
ADD Email varchar(255);




-- ALTER TABLE - DROP COLUMN
-- To delete a column in a table, use the following syntax 
-- (notice that some database systems don't allow deleting a column):

ALTER TABLE table_name
DROP COLUMN column_name;


-- ALTER TABLE - RENAME COLUMN
-- To rename a column in a table, use the following syntax:

ALTER TABLE table_name
RENAME COLUMN old_name to new_name;