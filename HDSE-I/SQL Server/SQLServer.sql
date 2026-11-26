-- ----------------------- DAY 1 ----------------------------

--Create Database
CREATE DATABASE aptech;

--Use Database
USE aptech;

--Create Table

CREATE TABLE student (
id INT PRIMARY KEY IDENTITY(1,2),
name VARCHAR(100),
age INT
);

SELECT * FROM student;

INSERT INTO student (name, age)
VALUES ('Ali', 22),
('Ahmed', 19),
('Ahsan', 27);

CREATE TABLE students (
id INT PRIMARY KEY IDENTITY(1,1),
name VARCHAR(100) NOT NULL,
age INT CHECK (age >= 18),
city VARCHAR(100) DEFAULT 'Karachi',
email VARCHAR(100) UNIQUE
);

INSERT INTO students (name, age, city, email)
VALUES ('Hashir', 22, 'Lahore', 'hashir@gmail.com');

INSERT INTO students (name, age, city, email)
VALUES ('Hashir', 18, 'Lahore', 'hashir1@gmail.com');

INSERT INTO students (name, age, email)
VALUES ('Hashir', 22, 'hashir2@gmail.com');


-- ----------------------- DAY 2 ----------------------------

-- Update
UPDATE students SET city = 'Islamabad';
UPDATE students SET name = 'Aashir' WHERE id = 4;

-- Delete 
DELETE FROM students;
DELETE FROM students WHERE email = 'hashir@gmail.com';

-- Truncate
TRUNCATE TABLE students;


-- ----------------------- DAY 3 ----------------------------

SELECT * FROM student;
SELECT * FROM students;

-- Drop Table and Database
DROP TABLE student;
DROP DATABASE aptech;

--Table Rename
EXEC sp_rename 'students', 'student';

-- Alter

--Add Column
ALTER TABLE student ADD contact INT;

--rename column
EXEC sp_rename 'student.contact', 'rabta', 'COLUMN';

--Change Column Data Type
ALTER TABLE student ALTER COLUMN rabta VARCHAR(100);

-- drop column
ALTER TABLE student DROP COLUMN rabta;

SELECT * FROM student;
SELECT TOP 2 * FROM student;
SELECT TOP 50 PERCENT * FROM student;
SELECT * FROM student WHERE city = 'Karachi';

CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Department VARCHAR(50) NOT NULL,
    JobTitle VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2) NULL, -- Includes NULLs to test IS NULL / IS NOT NULL
    HireDate DATE NOT NULL,
    City VARCHAR(50) NOT NULL,
    IsActive BIT NOT NULL DEFAULT 1 -- 1 = Active, 0 = Inactive
);

INSERT INTO Employees (FirstName, LastName, Email, Department, JobTitle, Salary, Bonus, HireDate, City, IsActive)
VALUES
('Ahmed', 'Khan', 'ahmed.khan@company.com', 'IT', 'Software Engineer', 85000.00, 5000.00, '2021-03-15', 'Karachi', 1),
('Sara', 'Ali', 'sara.ali@company.com', 'HR', 'HR Manager', 78000.00, 4000.00, '2020-07-01', 'Lahore', 1),
('Bilal', 'Raza', 'bilal.raza@company.com', 'Finance', 'Financial Analyst', 72000.00, NULL, '2022-01-10', 'Islamabad', 1),
('Ayesha', 'Tariq', 'ayesha.tariq@company.com', 'Marketing', 'Marketing Specialist', 62000.00, 2500.00, '2022-05-20', 'Karachi', 1),
('Usman', 'Sheikh', 'usman.sheikh@company.com', 'IT', 'Senior Developer', 110000.00, 10000.00, '2019-11-12', 'Lahore', 1),
('Zainab', 'Malik', 'zainab.malik@company.com', 'Sales', 'Sales Executive', 55000.00, 7500.00, '2023-02-14', 'Karachi', 1),
('Hamza', 'Siddiqui', 'hamza.siddiqui@company.com', 'IT', 'Database Administrator', 92000.00, NULL, '2021-08-22', 'Islamabad', 1),
('Fatima', 'Noor', 'fatima.noor@company.com', 'Operations', 'Operations Lead', 81000.00, 3500.00, '2020-04-18', 'Lahore', 1),
('Omar', 'Farooq', 'omar.farooq@company.com', 'Sales', 'Regional Sales Manager', 98000.00, 12000.00, '2018-09-30', 'Karachi', 1),
('Hira', 'Javed', 'hira.javed@company.com', 'HR', 'Recruiter', 52000.00, NULL, '2023-06-05', 'Islamabad', 1),
('Kamran', 'Akmal', 'kamran.akmal@company.com', 'Finance', 'Senior Accountant', 88000.00, 6000.00, '2019-02-25', 'Lahore', 0),
('Nadia', 'Hussain', 'nadia.hussain@company.com', 'Marketing', 'Content Strategist', 60000.00, 2000.00, '2022-09-11', 'Karachi', 1),
('Tariq', 'Mehmood', 'tariq.mehmood@company.com', 'IT', 'System Analyst', 79000.00, 4500.00, '2021-01-19', 'Rawalpindi', 1),
('Sana', 'Mir', 'sana.mir@company.com', 'Operations', 'Supply Chain Analyst', 68000.00, NULL, '2022-11-03', 'Lahore', 1),
('Faisal', 'Qureshi', 'faisal.qureshi@company.com', 'Sales', 'Account Executive', 58000.00, 8000.00, '2023-04-12', 'Karachi', 1),
('Marium', 'Yousuf', 'marium.yousuf@company.com', 'Finance', 'Auditor', 75000.00, 3000.00, '2020-12-01', 'Islamabad', 1),
('Ali', 'Zafar', 'ali.zafar@company.com', 'IT', 'DevOps Engineer', 105000.00, 9500.00, '2020-06-15', 'Lahore', 1),
('Rabia', 'Basri', 'rabia.basri@company.com', 'HR', 'HR Coordinator', 48000.00, NULL, '2024-01-08', 'Karachi', 1),
('Asad', 'Ullah', 'asad.ullah@company.com', 'Operations', 'Logistics Coordinator', 54000.00, 1500.00, '2023-08-19', 'Faisalabad', 0),
('Kiran', 'Shah', 'kiran.shah@company.com', 'Marketing', 'SEO Specialist', 57000.00, 2200.00, '2022-07-25', 'Lahore', 1),
('Imran', 'Hashmi', 'imran.hashmi@company.com', 'IT', 'IT Support Specialist', 45000.00, NULL, '2023-10-02', 'Karachi', 1),
('Sadia', 'Imam', 'sadia.imam@company.com', 'Sales', 'Sales Representative', 50000.00, 6500.00, '2023-03-27', 'Islamabad', 1),
('Waqas', 'Younis', 'waqas.younis@company.com', 'Operations', 'Operations Manager', 95000.00, 8500.00, '2018-05-14', 'Lahore', 1),
('Mahira', 'Khan', 'mahira.khan@company.com', 'Marketing', 'Brand Manager', 89000.00, 7000.00, '2019-10-21', 'Karachi', 1),
('Junaid', 'Jamshed', 'junaid.jamshed@company.com', 'Finance', 'Finance Manager', 115000.00, 15000.00, '2017-08-09', 'Karachi', 1),
('Amna', 'Ilyas', 'amna.ilyas@company.com', 'IT', 'QA Engineer', 67000.00, 3000.00, '2022-02-17', 'Lahore', 1),
('Danish', 'Taimoor', 'danish.taimoor@company.com', 'Sales', 'Business Development Exec', 63000.00, 9000.00, '2021-09-06', 'Karachi', 0),
('Ayeza', 'Khan', 'ayeza.khan@company.com', 'HR', 'Talent Acquisition Lead', 74000.00, 4000.00, '2020-11-11', 'Lahore', 1),
('Fahad', 'Mustafa', 'fahad.mustafa@company.com', 'IT', 'Solutions Architect', 125000.00, 18000.00, '2018-01-20', 'Karachi', 1),
('Sajal', 'Aly', 'sajal.aly@company.com', 'Marketing', 'Social Media Manager', 61000.00, NULL, '2022-04-04', 'Islamabad', 1),
('Ahad', 'Raza', 'ahad.raza@company.com', 'Finance', 'Tax Consultant', 82000.00, 5000.00, '2021-05-30', 'Lahore', 1),
('Maya', 'Ali', 'maya.ali@company.com', 'Operations', 'Project Coordinator', 64000.00, 2500.00, '2022-08-14', 'Karachi', 1),
('Sheheryar', 'Munawar', 'sheheryar.m@company.com', 'Sales', 'Key Account Manager', 84000.00, 11000.00, '2020-02-19', 'Lahore', 1),
('Hania', 'Aamir', 'hania.aamir@company.com', 'IT', 'Frontend Developer', 71000.00, 3500.00, '2022-06-28', 'Islamabad', 1),
('Farhan', 'Saeed', 'farhan.saeed@company.com', 'Operations', 'Quality Assurance Lead', 77000.00, NULL, '2021-04-12', 'Lahore', 1),
('Urwa', 'Hocane', 'urwa.hocane@company.com', 'HR', 'Training Specialist', 59000.00, 2000.00, '2023-01-16', 'Karachi', 0),
('Mawra', 'Hocane', 'mawra.hocane@company.com', 'Finance', 'Junior Accountant', 49000.00, NULL, '2024-02-01', 'Islamabad', 1),
('Hamza', 'Abbasi', 'hamza.abbasi@company.com', 'IT', 'Security Analyst', 96000.00, 8000.00, '2019-07-22', 'Rawalpindi', 1),
('Kubra', 'Khan', 'kubra.khan@company.com', 'Marketing', 'PR Specialist', 65000.00, 3000.00, '2021-12-09', 'Karachi', 1),
('Gohar', 'Rasheed', 'gohar.rasheed@company.com', 'Sales', 'Sales Analyst', 69000.00, 4500.00, '2022-03-03', 'Lahore', 1),
('Iqra', 'Aziz', 'iqra.aziz@company.com', 'IT', 'UI/UX Designer', 73000.00, 4000.00, '2021-10-15', 'Karachi', 1),
('Yasir', 'Hussain', 'yasir.hussain@company.com', 'Operations', 'Facilities Manager', 70000.00, NULL, '2020-09-28', 'Karachi', 1),
('Zara', 'Noor', 'zara.noor@company.com', 'HR', 'Payroll Specialist', 61000.00, 2800.00, '2022-10-10', 'Lahore', 1),
('Asim', 'Azhar', 'asim.azhar@company.com', 'IT', 'Backend Developer', 80000.00, 5500.00, '2021-07-07', 'Karachi', 1),
('Momina', 'Mustehsan', 'momina.m@company.com', 'Finance', 'Budget Analyst', 76000.00, 3800.00, '2021-02-11', 'Islamabad', 1),
('Atif', 'Aslam', 'atif.aslam@company.com', 'Sales', 'Enterprise Sales Lead', 102000.00, 14000.00, '2018-11-29', 'Lahore', 1),
('Meera', 'Jee', 'meera.jee@company.com', 'Marketing', 'Event Coordinator', 51000.00, NULL, '2023-09-18', 'Lahore', 0),
('Shoaib', 'Akhtar', 'shoaib.akhtar@company.com', 'Operations', 'Fleet Supervisor', 66000.00, 3200.00, '2021-06-24', 'Rawalpindi', 1),
('Wasim', 'Akram', 'wasim.akram@company.com', 'IT', 'IT Director', 140000.00, 20000.00, '2016-05-01', 'Karachi', 1),
('Sania', 'Mirza', 'sania.mirza@company.com', 'HR', 'Employee Relations Mgr', 83000.00, 5000.00, '2020-08-17', 'Karachi', 1);


SELECT * FROM Employees;
SELECT * FROM Employees WHERE Department = 'HR';
SELECT * FROM Employees WHERE salary > 70000;
SELECT * FROM Employees WHERE salary < 70000 AND Department = 'Sales';

-- ORDER BY
SELECT * FROM Employees ORDER BY FirstName;
SELECT * FROM Employees ORDER BY Department;
SELECT * FROM Employees ORDER BY Salary ASC;
SELECT * FROM Employees ORDER BY Salary DESC;
SELECT * FROM Employees ORDER BY Department DESC;

-- DISTINCT
SELECT DISTINCT * FROM Employees;
SELECT DISTINCT City FROM Employees;
SELECT DISTINCT Department FROM Employees;
SELECT DISTINCT JobTitle FROM Employees;

SELECT @@VERSION;


-- ----------------------- DAY 4 ----------------------------

-- IN Opr
SELECT * FROM Employees;
SELECT * FROM Employees WHERE salary = 49000 OR salary = 57000 OR salary = 72000 OR salary = 88000 OR salary = 122000;
SELECT * FROM Employees WHERE salary IN (49000, 57000, 72000, 88000, 122000);
SELECT * FROM Employees WHERE salary NOT IN (49000, 57000, 72000, 88000, 122000);

-- BETWEEN 
SELECT * FROM Employees WHERE salary >= 90000 AND salary <= 110000;
SELECT * FROM Employees WHERE salary BETWEEN 90000 AND 110000;
SELECT * FROM Employees WHERE salary NOT BETWEEN 90000 AND 110000;
SELECT * FROM Employees WHERE salary < 90000 AND salary >= 45000 OR salary > 110000 AND salary <= 140000;

-- LIKE
SELECT * FROM Employees WHERE FirstName LIKE 'A%';
SELECT * FROM Employees WHERE FirstName LIKE '%A%';
SELECT * FROM Employees WHERE FirstName LIKE '_A%';
SELECT * FROM Employees WHERE FirstName LIKE '%A_';
SELECT * FROM Employees WHERE FirstName LIKE '_A_';
SELECT * FROM Employees WHERE FirstName LIKE 'A__';
SELECT * FROM Employees WHERE FirstName LIKE 'A___';
SELECT * FROM Employees WHERE FirstName LIKE 'A_N%';