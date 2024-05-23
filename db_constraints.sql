-- SQL Create Constraints
-- Constraints can be specified when the table is created with the 
-- CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.

-- Syntax
CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);


-- SQL Constraints
-- SQL constraints are used to specify rules for the data in a table.
-- Constraints are used to limit the type of data that can go into a table. 
-- This ensures the accuracy and reliability of the data in the table. 
-- If there is any violation between the constraint and the data action, 
-- the action is aborted.
-- Constraints can be column level or table level. 
-- Column level constraints apply to a column, and table level constraints 
-- apply to the whole table.
-- The following constraints are commonly used in SQL:

-- NOT NULL - Ensures that a column cannot have a NULL value
-- UNIQUE - Ensures that all values in a column are different
-- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
-- FOREIGN KEY - Prevents actions that would destroy links between tables
-- CHECK - Ensures that the values in a column satisfies a specific condition
-- DEFAULT - Sets a default value for a column if no value is specified
-- CREATE INDEX - Used to create and retrieve data from the database very quickly




-- SQL NOT NULL Constraint
-- By default, a column can hold NULL values.
-- The NOT NULL constraint enforces a column to NOT accept NULL values.
-- This enforces a field to always contain a value, which means that 
-- you cannot insert a new record, or update a record without 
-- adding a value to this field.
-- SQL NOT NULL on CREATE TABLE
-- The following SQL ensures that the "ID", "LastName", and "FirstName" 
-- columns will NOT accept NULL values when the "Persons" table is created:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);




-- SQL UNIQUE Constraint
-- The UNIQUE constraint ensures that all values in a column are different.
-- Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for 
-- uniqueness for a column or set of columns.
-- A PRIMARY KEY constraint automatically has a UNIQUE constraint.
-- However, you can have many UNIQUE constraints per table, but only one 
-- PRIMARY KEY constraint per table.
-- SQL UNIQUE Constraint on CREATE TABLE
-- The following SQL creates a UNIQUE constraint on the "ID" column when 
-- the "Persons" table is created:

-- SQL Server / Oracle / MS Access:

CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- MySQL:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);



-- SQL PRIMARY KEY Constraint
-- The PRIMARY KEY constraint uniquely identifies each record in a table.
-- Primary keys must contain UNIQUE values, and cannot contain NULL values.
-- A table can have only ONE primary key; and in the table, this 
-- primary key can consist of single or multiple columns (fields).
-- SQL PRIMARY KEY on CREATE TABLE
-- The following SQL creates a PRIMARY KEY on the "ID" column when 
-- the "Persons" table is created:

-- MySQL:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

-- SQL Server / Oracle / MS Access:

CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);




-- DROP a PRIMARY KEY Constraint
-- To drop a PRIMARY KEY constraint, use the following SQL:
-- MySQL:

ALTER TABLE Persons
DROP PRIMARY KEY;

-- SQL Server / Oracle / MS Access:

ALTER TABLE Persons
DROP CONSTRAINT PK_Person;




-- SQL FOREIGN KEY Constraint
-- The FOREIGN KEY constraint is used to prevent actions that would destroy links 
-- between tables.
-- A FOREIGN KEY is a field (or collection of fields) in one table, 
-- that refers to the PRIMARY KEY in another table.
-- The table with the foreign key is called the child table, and the table with the primary key is 
-- called the referenced or parent table.





















