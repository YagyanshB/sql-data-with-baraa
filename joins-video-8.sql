SELECT *
FROM customers;

SELECT * 
FROM orders;


-- get all customers along with their orders but only for customers who have placed an order 

SELECT 
	c.id, 
    c.first_name, 
    c.country, 
    o.sales 
FROM customers c
INNER JOIN orders o
	ON c.id = o.customer_id 
ORDER BY o.sales DESC;

-- LEFT JOIN 
-- returns all rows from the left and only matching from the right 
-- the order of tables is important 

-- get all customers along with their orders, including those without orders 

SELECT 
	c.id, 
    c.first_name, 
    c.country, 
    o.order_id,
    o.sales 
FROM customers c
LEFT JOIN orders o
	ON c.id = o.customer_id 
ORDER BY o.sales DESC;


-- RIGHT JOIN 
-- it is quite literally the opposite of LEFT JOIN 

-- get all customers along with their orders, including orders without customers 

SELECT * 
FROM orders;

SELECT 
	c.id, 
    c.first_name, 
    c.country, 
    o.order_id,
    o.sales 
FROM orders o 
LEFT JOIN customers c
	ON c.id = o.customer_id 
ORDER BY o.sales DESC;

/* FULL JOIN */ 
-- order of the table is not important at all 

SELECT * 
FROM customers
FULL JOIN orders;

SELECT * FROM 
orders;