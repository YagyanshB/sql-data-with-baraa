/* SQL String Functions */ 

/* Manipulation String Functions */ 
-- CONCAT 
-- UPPER 
-- LOWER 
-- TRIM 
-- REPLACE 

/* Calculation */ 

-- LEN 

/* String Extraction */

-- LEFT 
-- RIGHT
-- SUBSTRING 

/* CONCAT */ 

USE MyDatabase;

-- concatenate first name and country from the table customers 

SELECT 
	CONCAT(first_name, '-', country) AS name_and_country 
FROM customers;

/* LOWER and UPPER */ 

SELECT 
	UPPER(first_name) AS f_name,
    LOWER(country) AS country_name
FROM customers;

/* TRIM */ 

SELECT 
	TRIM(first_name) AS f_name
FROM customers;

-- find customers whose name contains leading or trailing spaces 

SELECT 
	first_name
FROM customers
WHERE first_name != TRIM(first_name);

/* REPLACE */ 

-- remove dashes from a phone number 

SELECT 
	'123-456-789' AS old_value, 
REPLACE('123-456-789', '-', '') AS new_value;

/* LENGTH */ 

SELECT 
	first_name, 
    LENGTH(first_name) AS length_of_customer_name
FROM customers;

/* RIGHT */ 

SELECT 
	first_name,
	RIGHT(first_name, 3) 
FROM customers;

/* LEFT */ 

SELECT 
	first_name,
	LEFT(first_name, 3) 
FROM customers;

/* SUBSTRING */ 

SELECT 
	first_name, 
    SUBSTRING(first_name, 3,2) AS sub_string
FROM customers;


-- retrieve a list of customer's first name removing the first character 

SELECT 
	SUBSTRING(first_name, 2, LENGTH(first_name)) AS first_name
FROM customers;