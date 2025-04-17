/* OPERATORS IN SQL */ 

-- Range Operator - BETWEEN 
-- Membership Operators - IN, NOT IN 
-- Logical Operators - AND, OR, NOT 
-- Search Operator - LIKE 
 

SELECT * 
FROM MyDatabase.customers
WHERE score < 500
ORDER BY id;

-- retrieve all customers from USA who have a score greater than 500 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	score > 500 AND country = 'USA'
ORDER BY score ASC;

-- retrieve all customers who are from USA or have a score greater than 500 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	country = 'USA' or score > 500
ORDER BY id;

-- retrieve all customers with a score not less than 500 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	NOT score < 500;
    
-- retrieve all customers whose score falls in the range of 100 and 500 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	score BETWEEN 100 AND 500
ORDER BY id;

-- retrieve all customers that are from Germany or USA 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	country IN ('Germany', 'USA')
ORDER BY id;

-- find all customers whose first name starts with M

SELECT *
FROM MyDatabase.customers 
WHERE
	first_name LIKE 'M%'
ORDER BY id;

-- find all customers whose first names end with n 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	first_name LIKE '%n'
ORDER BY id;

-- find all customers whose first name has r in the third position 

SELECT * 
FROM MyDatabase.customers 
WHERE 
	first_name LIKE '__r%'
ORDER BY id;


