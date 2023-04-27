
-- 1. SELECT query is used to retrieve data's from the table.
-- * is used to retrieve all the columns and rows from the table.

-- Syntax: 
SELECT columnName FROM tableName; 

-- 2. In order to retrieve a particular row, we have to use WHERE clause followed by the condition.

-- Syntax: 
SELECT columnName FROM tableName WHERE value>20; 

-- 3. IN operator is used to retrieve one or more specific rows.
-- IN operator is used after the where clause.

-- Syntax: 
SELECT statesColumn FROM tableName WHERE statesColumn IN ('Delhi', 'Bihar', 'Uttar Pradesh'); 
-- This query will return records from statesColumn where states name are Delhi, Bihar, Uttar Pradesh

-- 4. In a table you have to retrieve a data by using a particular word or character, then you can use like operator.
-- % symbol denotes the unknown word or character, which can be in front or back of the letter or both.

-- Syntax: 
SELECT * FROM Employee_Details WHERE Firstname LIKE '%M%';


-- 5. The ALTER TABLE statement is used to add, delete and modify columns in an existing database. 

-- Syntax for Adding Columns: 
ALTER TABLE tableName ADD columnName data-type; 

-- Syntax for Deleting Columns: 
ALTER TABLE tableName DROP COLUMN columnName; 

-- Syntax for Modifying Columns: 
ALTER TABLE tableName ALTER COLUMN columnName data-type; 
-- The ALTER COLUMN keywords allows us to change the data-type of an existing column

-- 6. The NOT NULL constraint dis-allows a column to store null values or be empty, as by default columns can be null. So, this constraint allows us to make sure that some value is inserted in the column and is not left empty, no new records can be inserted into the database until a value has been stored in this place. 

-- Syntax: 
CREATE TABLE tableName(RollNo int NOT NULL, Name text); 
-- This query will create a table where Roll Number entry can't be left empty

-- 7. The PRIMARY KEY constraint works exactly like the UNIQUE constraint, no two column values can be the same. But in this case, only one column in the table can have Primary Key constraint. No column can have null values having Primary Key constraint. 

-- Syntax: 
CREATE TABLE tableName(RollNo int PRIMARY KEY, Name text);

-- 8. The FOREIGN KEY allows us to link two tables together. A table containing foreign key refers to another table containing primary key. No other column of a table can have the same data as of a column with primary key constraint, so to link the data to the primary key value we use the concept of foreign key. 

-- Syntax: 
CREATE TABLE tableOne (RollNo int PRIMARY KEY, Name text); 

CREATE TABLE tableTwo (SNo int REFERENCES tableOne(RollNo), Address text);
