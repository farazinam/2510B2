-- create a database
CREATE DATABASE ecommerce;

-- select database
USE ecommerce;

-- create table
CREATE TABLE product (
product_id INT,
product_name VARCHAR(100),
product_price INT
);

-- fetch data
SELECT * FROM product;

-- insertion of data
INSERT INTO product (product_id, product_name, product_price) 
VALUES (2, "Laptop", 77000),
(3, "Computer", 82000),
(4, "Headphone", 5000);

INSERT INTO product
VALUES (5, "Mouse", 1000);

INSERT INTO product (product_id, product_name)
VALUES (5, "Mouse");

-- Constraint
CREATE TABLE customer (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
age INT CHECK (age >= 18),
city VARCHAR(50) DEFAULT 'Karachi',
email VARCHAR (100) UNIQUE
);

SELECT * FROM customer;

INSERT INTO customer
VALUES ("Hassan", 27, "Multan", "hassan@gmail.com");

-- alter 

-- Add Column

ALTER TABLE product
ADD COLUMN product_description INT;

ALTER TABLE product
MODIFY COLUMN product_description VARCHAR (100);

ALTER TABLE product
DROP COLUMN product_desc;

ALTER TABLE product
CHANGE product_description product_desc VARCHAR (100);

SELECT * FROM product;




