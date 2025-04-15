/* Data Manipulation Language */ 

/* INSERT query */ 

-- manual entry of data values 

INSERT INTO 
customers(id, first_name, country, score)
VALUES
(6, 'Anna', 'India', NULL), 
(7, 'Sam', NULL, 100);

SELECT * 
FROM customers;

-- automatic way of entrying data values 
-- copy data from customers table and insert it into persons 

INSERT INTO persons(id, person_name, birth_date, phone)
SELECT 
id, 
first_name, 
NULL,
'Unknown'
FROM customers;

/* UPDATE query */

SELECT * FROM customers;

UPDATE customers 
SET first_name = "Bond"
WHERE first_name = "John";

-- change the score of a customer with id 6 to 0

UPDATE customers 
SET score = 0, 
country = 'UK' 
WHERE id = 6;

SELECT * 
FROM customers;

-- update all customers with a NULL score by setting their score to 0 

UPDATE customers 
SET score = 0 
WHERE score IS NULL;

/* DELETE query */ 

DELETE FROM customers 
WHERE score = 0;

-- delete all the customers with an id greater than 5 

DELETE 
FROM customers 
WHERE id > 5;

SELECT *
FROM customers;


-- delete all data from a table 

DELETE FROM persons 

-- clears the whole table at once without checking or logging

-- TRUNCATE vs DROP 
