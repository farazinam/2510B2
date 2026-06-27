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

-- Change DataType
ALTER TABLE product
MODIFY COLUMN product_description VARCHAR (100);

-- Delete Colun
ALTER TABLE product
DROP COLUMN product_desc;

-- Rename Column
ALTER TABLE product
CHANGE product_description product_desc VARCHAR (100);

SELECT * FROM product;

-- day 3 ----------------

INSERT INTO cust (name, age, city, email)
VALUES ("Hasham", 21, "Murree", "hasham@gmail.com");

-- Truncate
TRUNCATE table cust;

-- Drop
DROP TABLE cust;
DROP DATABASE ecommerce;

-- Rename
RENAME TABLE customer TO employee;
ALTER TABLE employee RENAME TO customer;

-- DML
SET SQL_SAFE_UPDATES = 0;
-- Update
UPDATE customer SET age = 19;
UPDATE customer SET age = 20 WHERE id = 8;
UPDATE customer SET age = 19 WHERE name = "Ali";
UPDATE customer SET name = "Ahsan" WHERE city = "Islamabad";
UPDATE customer SET city = "Faisalabad" WHERE email is null;

-- Delete
DELETE from customer;  -- Delete all record from a table
DELETE FROM customer WHERE id = 8;


-- select
SELECT * FROM customer;
SELECT * FROM customer WHERE city = "Faisalabad";
SELECT name FROM customer WHERE city = "Faisalabad";
SELECT name, age FROM customer WHERE city = "Faisalabad";
SELECT * FROM customer WHERE age < 20;
SELECT * FROM customer WHERE email is null;
SELECT * FROM customer WHERE email is not null;
SELECT * FROM customer WHERE not email is null;

SELECT * FROM customer LIMIT 3;

SELECT name from customer;
SELECT name, city from customer;


