USE MyDatabase;

-- an example of a comment where we are retrieving all customer records or rows

SELECT * 
FROM customers;

/* 
another example of a comment where we are retrieving all order records or rows
*/ 

SELECT * 
FROM orders;

-- retriver records from customers and order them by score in a descending manner 

SELECT 
first_name, country, score
FROM customers
ORDER BY score DESC;

-- retrieve customers with score greater than or equal to 500

SELECT 
first_name, country, score
FROM customers
WHERE score >= 500
ORDER BY score DESC;

-- retriever customers with score not equal to 0 

SELECT * 
FROM customers 
WHERE score != 0;

-- retrieve customers from germany 

SELECT * 
FROM customers 
WHERE country = 'Germany';

/* ORDER BY queries */ 

-- retrieve all customer records and sort the results by country and then by highest score 

SELECT * 
FROM customers
ORDER BY country ASC, score DESC;

/* GROUP BY queries */

SELECT country, SUM(score) AS total_score
FROM customers 
GROUP BY country
ORDER BY total_score DESC;

-- find total number of customers and score for each country 

SELECT 
country, COUNT(country) AS customer_count, SUM(score) as country_score
FROM customers 
GROUP BY country
ORDER BY country_score DESC;

/* HAVING query */ 

-- find the average score for each country 
-- considering only customers with a score not equal to 0 
-- and return only those countries with an average score greater than 430 

SELECT 
country, ROUND(AVG(score),2) AS average_score
FROM customers
WHERE score != 0
GROUP BY country
HAVING average_score > 430;

/* DISTINT query */ 

-- return unique list of all countries 

SELECT DISTINCT(country) 
FROM customers;

/* LIMIT query */ 

-- limits your data 
-- retrieve only three customers

SELECT *
FROM customers
LIMIT 3;

-- retrieve top 3 customers with the highest score 

SELECT * 
FROM customers 
ORDER BY score DESC 
LIMIT 3;

-- retrieve lowest 2 customers based on the score 

SELECT * 
FROM customers
ORDER BY score ASC
LIMIT 2;

-- get the two most recent orders 

SELECT * 
FROM orders
ORDER BY order_date DESC 
LIMIT 2;
