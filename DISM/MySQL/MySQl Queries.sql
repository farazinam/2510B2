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

-- day 4 ----------------

-- TCL
SELECT * from customer;
SELECT * from product;

START TRANSACTION;
UPDATE customer SET email = 'bilala@gmail.com' WHERE name = 'bilal';

COMMIT;
ROLLBACK;

-- Functions
-- Built-In Functions

-- String Fn
SELECT CONCAT('Faraz', ' ', 'Inam', ' ', 'Khan') AS Full_Name;
SELECT CONCAT(name, ' ', city) AS NameCity FROM customer;

SELECT * FROM customer;
SELECT *, CONCAT(name, ' ', city) AS NameCity FROM customer;

-- Math Fn
SELECT CEIL(2.1) AS CEIL;
SELECT FLOOR(2.7) AS FLOOR;

-- Date Fn
SELECT NOW() AS DateandTime;
SELECT CURDATE() AS CuuurentDate;

-- Aggregate Function

SELECT * FROM product;
SELECT COUNT(product_price) AS Product_Price_Count FROM product;
SELECT COUNT(*) AS Records_Count FROM product;
SELECT MAX(product_price) FROM product;
SELECT MIN(product_price) FROM product;
SELECT AVG(product_price) FROM product;
SELECT SUM(product_price) FROM product;
SELECT product_id, product_name, MAX(product_price) FROM product; -- Fetching incorrect Record

-- Day 5 ----------------

Select * from product;

-- Clauses

-- Distinct
Select Distinct * from product;
Select Distinct product_name from product;

-- Order By
Select * from product Order By product_name;
Select * from product Order By product_name ASC;
Select * from product Order By product_name DESC;

Select * from customer Order by City;

-- Operators

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    performance_rating INT,
    manager_id INT
);

INSERT INTO employees (first_name, last_name, email, department, salary, hire_date, performance_rating, manager_id) VALUES
('John', 'Doe', 'john.doe@company.com', 'HR', 55000.00, '2020-01-15', 4, NULL),
('Jane', 'Smith', 'jane.smith@company.com', 'IT', 85000.00, '2019-03-20', 5, NULL),
('Michael', 'Brown', 'michael.brown@company.com', 'IT', 72000.00, '2021-06-01', 3, 2),
('Emily', 'Davis', 'emily.davis@company.com', 'Finance', 95000.00, '2018-11-12', 5, NULL),
('David', 'Wilson', 'david.wilson@company.com', 'Marketing', 60000.00, '2022-02-14', 4, NULL),
('Sarah', 'Miller', 'sarah.miller@company.com', 'HR', 48000.00, '2023-05-10', 2, 1),
('James', 'Taylor', 'james.taylor@company.com', 'IT', 68000.00, '2021-09-17', 3, 2),
('Amanda', 'Thomas', 'amanda.thomas@company.com', 'Finance', 78000.00, '2020-08-24', 4, 4),
('Robert', 'White', 'robert.white@company.com', 'Sales', 52000.00, '2021-11-05', 3, NULL),
('Lisa', 'Harris', 'lisa.harris@company.com', 'Sales', 54000.00, '2022-01-30', 4, 9),
('William', 'Martin', 'william.martin@company.com', 'Marketing', 62000.00, '2020-04-18', 3, 5),
('Megan', 'Thompson', 'megan.thompson@company.com', 'IT', 90000.00, '2017-07-11', 5, 2),
('Kevin', 'Garcia', 'kevin.garcia@company.com', 'Sales', 45000.00, '2023-02-28', 2, 9),
('Rachel', 'Martinez', 'rachel.martinez@company.com', 'HR', 51000.00, '2022-07-15', 3, 1),
('Brian', 'Robinson', 'brian.robinson@company.com', 'Finance', 88000.00, '2019-10-05', 4, 4),
('Christine', 'Clark', 'christine.clark@company.com', 'IT', 75000.00, '2021-03-12', 4, 2),
('Jason', 'Rodriguez', 'jason.rodriguez@company.com', 'Marketing', 58000.00, '2023-01-09', 3, 5),
('Anna', 'Lewis', 'anna.lewis@company.com', 'Sales', 61000.00, '2020-12-01', 5, 9),
('Daniel', 'Lee', 'daniel.lee@company.com', 'IT', 82000.00, '2018-05-22', 4, 2),
('Laura', 'Walker', 'laura.walker@company.com', 'Finance', 71000.00, '2022-09-19', 3, 4),
('Matthew', 'Hall', 'matthew.hall@company.com', 'HR', 53000.00, '2021-04-25', 4, 1),
('Stephanie', 'Allen', 'stephanie.allen@company.com', 'Sales', 49000.00, '2023-06-30', 2, 9),
('Charles', 'Young', 'charles.young@company.com', 'Marketing', 67000.00, '2019-08-14', 4, 5),
('Nicole', 'King', 'nicole.king@company.com', 'IT', 79000.00, '2020-11-03', 4, 2),
('Andrew', 'Wright', 'andrew.wright@company.com', 'Finance', 92000.00, '2017-02-20', 5, 4),
('Samantha', 'Lopez', 'samantha.lopez@company.com', 'Sales', 56000.00, '2021-05-14', 3, 9),
('Joshua', 'Hill', 'joshua.hill@company.com', 'Marketing', 55000.00, '2022-10-10', 2, 5),
('Rebecca', 'Scott', 'rebecca.scott@company.com', 'HR', 47000.00, '2023-03-15', 3, 1),
('Timothy', 'Green', 'timothy.green@company.com', 'IT', 87000.00, '2019-01-28', 5, 2),
('Melissa', 'Adams', 'melissa.adams@company.com', 'Finance', 80000.00, '2020-06-05', 4, 4);

Select * from  employees;

Select * from  employees WHERE manager_id = 2;
Select * from  employees WHERE Salary > 90000;
Select * from  employees WHERE Salary >= 90000;
Select * from  employees WHERE Salary < 90000;
Select * from  employees WHERE Salary <> 90000;
Select * from  employees WHERE Not Salary = 90000;

-- Group By
SELECT department, SUM(salary) FROM employees GROUP BY department;
SELECT department, SUM(salary) FROM employees WHERE salary > 70000 GROUP BY department;

-- Logical (AND OR)
SELECT * FROM employees WHERE salary > 70000 and department = 'Marketing';
SELECT * FROM employees WHERE salary > 70000 and department = 'Finance';

SELECT * FROM employees WHERE salary > 70000 OR department = 'Marketing';
SELECT * FROM employees WHERE salary > 70000 OR department = 'Finance';

SELECT * FROM employees WHERE salary > 70000;
SELECT * FROM employees WHERE salary > 70000 AND (performance_rating > 3 OR department = 'Marketing');
SELECT * FROM employees WHERE salary > 80000 AND (performance_rating > 3 OR department = 'IT');
SELECT * FROM employees WHERE (salary > 80000 AND performance_rating > 3) OR department = 'IT';

-- BETWEEN
SELECT * FROM employees;
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 60000;
SELECT * FROM employees WHERE salary BETWEEN 90000 AND 95000;
UPDATE employees SET salary = salary*1.10 WHERE salary BETWEEN 90000 AND 95000;
SET SQL_SAFE_UPDATES = 0;
SELECT * FROM employees WHERE salary BETWEEN 99000 AND 110000;

-- Day 6 ----------------

-- IN Operator
SELECT * FROM employees WHERE department IN ('Sales', 'Marketing', 'IT');
SELECT * FROM employees WHERE NOT department IN ('Sales', 'Marketing', 'IT');
SELECT * FROM employees WHERE department = 'Sales' OR department = 'Marketing' OR department = 'IT';

-- LIKE Operator
SELECT * FROM employees WHERE first_name LIKE 'A%';
SELECT * FROM employees WHERE first_name LIKE '%A';
SELECT * FROM employees WHERE first_name LIKE '%A%';
SELECT * FROM employees WHERE first_name LIKE '%A__';
SELECT * FROM employees WHERE first_name LIKE '_A_';
SELECT * FROM employees WHERE first_name LIKE 'A__';


-- Day 7 ----------------

-- JOINS

CREATE TABLE department (
id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100) NOT NULL
);

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100) NOT NULL, 
city VARCHAR(100) DEFAULT 'Karachi',
salary INT NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES department (id)
);

INSERT INTO department(name)
VALUES ('HR'),
('Marketing'),
('Engineering');

INSERT INTO employee(name, city, salary, department_id)
VALUES ('Ali', 'Karachi', 15000, 1),
('Daniyal', 'Lahore', 17000, 3),
('Muntazir', 'Lahore', 16500, 1),
('Ahmed', 'Karachi', 15000, NULL),
('Hassan', 'Lahore', 14000, NULL),
('Shariq', 'Islamabad', 17500, 1);

SELECT * FROM department;
SELECT * FROM employee;

-- INNER JOIN
SELECT * FROM employee
JOIN department
ON department.id = employee.department_id;

SELECT employee.name, employee.city,  employee.salary, department.name 
FROM employee
JOIN department
ON department.id = employee.department_id;

SELECT e.name, e.city,  e.salary, d.name 
FROM employee AS e
JOIN department AS d
ON d.id = e.department_id;


-- Day 8 ----------------

-- OUTER JOIN

-- LEFT JOIN
SELECT e.name, e.city,  e.salary, d.name 
FROM employee AS e
LEFT JOIN department AS d
ON d.id = e.department_id;

-- RIGHT JOIN
SELECT e.name, e.city,  e.salary, d.name 
FROM employee AS e
RIGHT JOIN department AS d
ON d.id = e.department_id;

-- FULL JOIN
SELECT e.name, e.city,  e.salary, d.name 
FROM employee AS e
RIGHT JOIN department AS d
ON d.id = e.department_id
UNION
SELECT e.name, e.city,  e.salary, d.name 
FROM employee AS e
LEFT JOIN department AS d
ON d.id = e.department_id;

-- JOIN OF 3 Tables
CREATE TABLE product (
pid INT PRIMARY KEY AUTO_INCREMENT,
pname VARCHAR(100) NOT NULL,
price INT NOT NULL
);

CREATE TABLE customer (
cid INT PRIMARY KEY,
cname VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
oid INT PRIMARY KEY ,
qty INT NOT NULL,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
p_id INT,
c_id INT,
FOREIGN KEY (p_id) REFERENCES product (pid),
FOREIGN KEY (c_id) REFERENCES customer (cid)
);


INSERT INTO product(pname, price)
VALUES('Bottle', 2600), 
('Perfume', 5500), 
('Smart Watch', 9500), 
('EarBuds', 3700);

INSERT INTO customer (cid, cname, city)
VALUES (101, 'Ali', 'Karachi'),
(102, 'Hassan', 'Lahore'), 
(103, 'Zia', 'Karachi');

INSERT INTO orders (oid, qty, p_id, c_id)
VALUES(1001, 1, 1, 101),
(1002, 2, 1, 102),
(1003, 3, 2, 101),
(1004, 2, 3, 102);

-- INNER JOIN 
SELECT * FROM orders
JOIN product
ON orders.p_id = product.pid
JOIN customer
ON orders.c_id = customer.cid;

SELECT c.cname, c.city, p.pname, p.price, o.qty, o.order_date 
FROM orders AS o
JOIN product AS p
ON o.p_id = p.pid
JOIN customer AS c
ON o.c_id = c.cid;


-- Day 9 ----------------

-- SELF JOIN

CREATE TABLE emp_manager (
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(100),
manager_id INT,
FOREIGN KEY (manager_id) REFERENCES emp_manager (employee_id)
);

INSERT INTO emp_manager (employee_name, manager_id)
VALUES ('Hamza', NULL),
('Shahzaib', NULL), ('Owais', NULL), 
('Tehreem', NULL), ('Hassan', NULL), ('Atif', NULL);

UPDATE emp_manager 
SET manager_id = 7 WHERE employee_id = 6;

SELECT * FROM emp_manager;

SELECT e.employee_name AS Employee, m.employee_name AS Manager
FROM emp_manager AS e
LEFT JOIN emp_manager AS m
ON e.manager_id = m.employee_id;


-- CROSS JOIN
CREATE TABLE colors
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR (100));

CREATE TABLE sizes
(id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR (100));

INSERT INTO colors (name)
VALUES ("Red"), ("Green"), ("Blue");

INSERT INTO sizes (name)
VALUES ("Small"), ("Medium"), ("Large");

SELECT * FROM colors
CROSS JOIN sizes;

SELECT * FROM colors;
SELECT * FROM size;


-- Day 10 ----------------

SELECT MAX(salary) FROM employees;
SELECT *, MAX(salary) FROM employees;
SELECT *, MIN(salary) FROM employees;

SELECT employee_id, first_name, last_name, 
email, department, MAX(salary) AS MaxSalary, hire_date, performance_rating, manager_id 
FROM employees;

-- Subquery
SELECT * FROM employees
WHERE salary IN (SELECT MAX(salary) FROM employees);

SELECT * FROM employees
WHERE salary IN (SELECT MIN(salary) FROM employees);

SELECT pname
FROM product
WHERE pid IN (SELECT p_id FROM orders WHERE c_id = 101);

CREATE TABLE employee2 (
employee_id INT, 
employee_name VARCHAR(100), 
salary INT
);

SELECT * FROM employee2;
SELECT * FROM employee;

INSERT INTO employee2 (employee_id, employee_name, salary)
SELECT id, name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

UPDATE employee SET salary = salary * 1.1
WHERE department_id IN (SELECT id FROM department WHERE name = 'HR');

SET SQL_SAFE_UPDATES = 0;

DELETE FROM orders
WHERE customer_id IN (SELECT customer_id 
FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM payments));

-- Store Procedure

DELIMITER //
CREATE PROCEDURE sp_emps()
BEGIN
SELECT * FROM employees;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE sp_selfjoin()
BEGIN
SELECT e.employee_name AS Employee, m.employee_name AS Manager
FROM emp_manager AS e
LEFT JOIN emp_manager AS m
ON e.manager_id = m.employee_id;
END //
DELIMITER ;

CALL sp_emps();
CALL sp_selfjoin();

-- Day 11 ----------------

SELECT * FROM employees;
-- Parametarize stoed Procedure

DELIMITER //
CREATE PROCEDURE sp_empDep(IN dept VARCHAR(100))
BEGIN
SELECT * FROM employees WHERE department = dept;
END //
DELIMITER ;

CALL sp_empDep('Marketing');

DELIMITER //
CREATE PROCEDURE sp_empDepSal(IN dept VARCHAR(100), sal INT)
BEGIN
SELECT * FROM employees WHERE department = dept AND salary > sal;
END //
DELIMITER ;

CALL sp_empDepSal('Marketing', 60000);
CALL sp_empDepSal('HR', 40000);

SHOW PROCEDURE STATUS;
SHOW PROCEDURE STATUS WHERE NAME LIKE '%n';
DROP PROCEDURE sp_emps;

-- VIEWS

CREATE VIEW vw_emps
AS
SELECT * FROM employees;

CREATE VIEW vw_emps2
AS
SELECT first_name, department, hire_date FROM employees;

CREATE VIEW vw_emps3
AS
SELECT CONCAT(first_name, ' ', last_name) AS FullName, department, hire_date FROM employees;

SELECT * FROM employees;  -- select table
SELECT * FROM vw_emps;  -- select view
SELECT * FROM vw_emps2;  -- select view
SELECT * FROM vw_emps3;  -- select view

-- Alter View for modification
ALTER VIEW vw_empDep
AS
SELECT c.cname, c.city, p.pname, p.price, o.order_date 
FROM orders AS o
JOIN product AS p
ON o.p_id = p.pid
JOIN customer AS c
ON o.c_id = c.cid;

SELECT * FROM vw_empDep;

-- Drop View
DROP VIEW vw_emps;









