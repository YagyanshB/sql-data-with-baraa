/* LEFT ANTI JOIN */ 

-- returns rows from the left table that has no match in the right table 

/* 
SELECT * 
FROM Table A 
LEFT JOIN Table B 
ON A.Key = B.Key 
WHERE B.Key IS NULL;
*/ 

-- get all customers who haven't placed an order 

SELECT *
FROM customers AS c 
LEFT JOIN orders AS o 
	ON c.id = o.customer_id 
    WHERE o.customer_id IS NULL;

/* RIGHT ANTI JOIN */ 

-- returns rows from the right table that has no match in the left table 

-- get all orders without matching customers

SELECT *
FROM orders AS o 
RIGHT JOIN customers AS c 
	ON c.id = o.customer_id
    WHERE c.id IS NULL;

/* FULL ANTI JOIN */ 

-- returns only rows that don't match in either of the tables 

-- find customers without orders and orders without customers 


-- get all customers along with their orders but only for customers who have placed an order 

SELECT * 
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id 
WHERE o.customer_id IS NOT NULL;


/* CROSS JOIN */ 

SELECT * 
FROM customers 
CROSS JOIN orders;




