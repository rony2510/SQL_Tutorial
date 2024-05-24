-- The SQL SELECT INTO Statement
-- The SELECT INTO statement copies data from one table into a new table.

-- SELECT INTO Syntax
-- Copy all columns into a new table:

SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;
Copy only some columns into a new table:

SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;