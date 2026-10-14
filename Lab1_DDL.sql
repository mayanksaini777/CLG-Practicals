CREATE DATABASE IF NOT EXISTS lab1_ddl;

USE lab1_ddl;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Course VARCHAR(100),
    City VARCHAR(100)
);

SHOW TABLES;
-- Question 3: Employee Table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- Question 4: Department Table
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100),
    Location VARCHAR(100)
);

-- Question 5: Product Table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT
);

-- Question 6: Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Email VARCHAR(150),
    Phone VARCHAR(20)
);

-- Question 7: Course Table
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Duration VARCHAR(50),
    Fees DECIMAL(10,2)
);

-- Question 8: Faculty Table
CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Faculty_Name VARCHAR(100),
    Subject VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- Question 9: Library Table
CREATE TABLE Library (
    Book_ID INT PRIMARY KEY,
    Book_Name VARCHAR(150),
    Author VARCHAR(100),
    Price DECIMAL(10,2)
);

-- Verify all tables
SHOW TABLES;

-- Question 10: Department table with Primary Key
CREATE TABLE Department_PK (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(100),
    Location VARCHAR(100)
);

-- Question 11: Student table with Primary Key and NOT NULL
CREATE TABLE Student_Constraints (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Course VARCHAR(100),
    City VARCHAR(100)
);

-- Question 12: Employee table with UNIQUE constraint on Email
CREATE TABLE Employee_Unique (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Email VARCHAR(150) UNIQUE,
    Department VARCHAR(100),
    Salary DECIMAL(10,2)
);

-- Question 13: Product table with CHECK constraint
CREATE TABLE Product_Check (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Price DECIMAL(10,2) CHECK (Price > 0),
    Quantity INT
);
-- Question 14: Add Email column to Student
ALTER TABLE Student ADD COLUMN Email VARCHAR(150);

-- Question 15: Add Phone column to Student
ALTER TABLE Student ADD COLUMN Phone VARCHAR(20);

-- Question 16: Modify Name column size
ALTER TABLE Student MODIFY COLUMN Name VARCHAR(150);

-- Question 17: Rename Student table
-- Isko abhi execute mat karna.
-- ALTER TABLE Student RENAME TO Student_Details;

-- Question 18: Rename City to Address
-- ALTER TABLE Student CHANGE COLUMN City Address VARCHAR(100);

-- Question 19: Add Salary column to Employee
ALTER TABLE Employee ADD COLUMN Salary_Extra DECIMAL(10,2);

-- Question 20
-- ALTER TABLE Student DROP COLUMN Phone;

-- Question 21
-- ALTER TABLE Student DROP COLUMN Email;

-- Question 22
-- TRUNCATE TABLE Student;

-- Question 23
-- DROP TABLE Course;

-- Question 24
-- DROP TABLE Customer;

CREATE TABLE Student_Complete (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(150) UNIQUE,
    Age INT CHECK (Age >= 16),
    Course VARCHAR(100),
    City VARCHAR(100)
);

-- Demonstrate ALTER
ALTER TABLE Student_Complete
ADD COLUMN Phone VARCHAR(20);

-- Demonstrate MODIFY
ALTER TABLE Student_Complete
MODIFY COLUMN Name VARCHAR(150) NOT NULL;

-- Demonstrate DROP
ALTER TABLE Student_Complete
DROP COLUMN Phone;

-- Question 20: Drop Phone column
ALTER TABLE Student
DROP COLUMN Phone;

-- Question 21: Drop Email column
ALTER TABLE Student
DROP COLUMN Email;
-- Question 22: Remove all records from Student
TRUNCATE TABLE Student;
-- Question 23: Drop Course table
DROP TABLE Course;

-- Question 24: Drop Customer table
DROP TABLE Customer;
DESC Student_Complete;
USE lab1_ddl;

ALTER TABLE Student
RENAME TO Student_Details;
ALTER TABLE Student_Details
CHANGE COLUMN City Address VARCHAR(100);
USE lab1_ddl;

-- Question 17: Rename Student table
ALTER TABLE Student
RENAME TO Student_Details;
USE lab1_ddl;

SHOW TABLES;
DESCRIBE Student_Details;