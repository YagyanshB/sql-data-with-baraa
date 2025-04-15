/* Data Definition Language */ 

-- create a new table called persons with columns: 
-- id, person_name, birth_date, phone 

/* CREATE query */ 

CREATE TABLE persons 
(id INT NOT NULL,
first_name VARCHAR(50) NOT NULL, 
birth_date DATE, 
phone VARCHAR(50),
CONSTRAINT pk_persons PRIMARY KEY (id)
)

/* ALTER query */ 

-- add a new column called email to the persons table 

SELECT * 
FROM persons;

ALTER TABLE persons 
DROP email;

SELECT * 
FROM persons;

/* DROP query */ 

-- delete the table persons from the database 

DROP TABLE persons;

