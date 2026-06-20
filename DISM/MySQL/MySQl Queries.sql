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
VALUES (1, "Mobile", 57000);


