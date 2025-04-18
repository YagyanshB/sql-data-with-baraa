/* SET Operators */ 

-- These are operations in SQL that combine the results of multiple queries into a single result set 

-- combine the rows from two tables 
-- set operators append the records at the below of the table 

-- union 
-- union all 
-- except 
-- intersect 

/* Syntax and Rules */ 

USE SalesDB;

SELECT 
	FirstName, 
    LastName
FROM Customers 

UNION

SELECT 
	FirstName,
    LastName
FROM Employees;

-- SET Operator can be used almost in all clauses 
-- ORDER BY can be used only once and at the end of the query 
-- Number of Columns should be the same when carrying out unions 
-- Data Types of each column in each query must be compatible 
-- Order of the columns must be the same in the manner we query 
-- The column names of the result query are determined by the column names specified in the first query 


/* UNION */ 

-- returns all distinct rows from the queries 
-- removes all duplicates from the results 


-- combine the data from customers and employees 


SELECT
	FirstName AS forename,
    LastName AS surname
FROM Customers

UNION

SELECT 
	FirstName, 
    LastName
FROM Employees;

/* UNION ALL */

-- returns all rows from both querries including duplicates
-- faster than UNION 
-- if there are no duplicates, then use UNION ALL 
-- use UNION ALL for duplicate values 

SELECT
	FirstName AS forename,
    LastName AS surname
FROM Customers

UNION ALL

SELECT 
	FirstName, 
    LastName
FROM Employees;

/* EXCEPT Query */ 

-- returns all distinct rows from the first query that are not available in the second query 
-- order of queries affects the result of the query 

-- find employees who are not customers 

SELECT
	FirstName AS forename,
    LastName AS surname
FROM Customers 
EXCEPT 
SELECT 
	FirstName, 
    LastName
FROM Employees;

/* INTERSECT Query */ 

-- returns only rows that are common in both queries 

SELECT
	FirstName AS forename,
    LastName AS surname
FROM Customers 

INTERSECT 

SELECT 
	FirstName, 
    LastName
FROM Employees;

/* Combine Simillar Information before analysing the data */ 

-- database developers divide the data into multiple tables to optimise performance and archive old data 

/* DELTA Detection */ 

-- identifying the differences or changes (delta) between two batches of data 
-- create a logic 

/* Data Completeness Check */ 

-- Except operator can be used to compare tables to detect discrepancies between databases 



