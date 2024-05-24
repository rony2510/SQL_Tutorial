-- SQL CREATE VIEW Statement
-- In SQL, a view is a virtual table based on the result-set of an SQL statement.
-- A view contains rows and columns, just like a real table. 
-- The fields in a view are fields from one or more real tables in the database.
-- You can add SQL statements and functions to a view and present 
-- the data as if the data were coming from one single table.

-- A view is created with the CREATE VIEW statement. 

-- CREATE VIEW Syntax
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;





-- SQL Updating a View
-- A view can be updated with the CREATE OR REPLACE VIEW statement.
-- SQL CREATE OR REPLACE VIEW Syntax

CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;




-- SQL Dropping a View
-- A view is deleted with the DROP VIEW statement.
-- SQL DROP VIEW Syntax

DROP VIEW view_name;