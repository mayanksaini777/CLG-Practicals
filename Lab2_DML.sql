USE lab2_dml;

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

-- Q1. Insert one record into the Student table

USE lab2_dml;

INSERT INTO Student
VALUES (1, 'Rahul', 20, 'CSE', 'Roorkee');
SELECT * FROM Student;

-- Q2. Insert five student records using separate INSERT statements

INSERT INTO Student
VALUES (2, 'Aman', 19, 'AIML', 'Delhi');

INSERT INTO Student
VALUES (3, 'Priya', 20, 'CSE', 'Meerut');

INSERT INTO Student
VALUES (4, 'Rohit', 21, 'ECE', 'Roorkee');

INSERT INTO Student
VALUES (5, 'Neha', 19, 'AIML', 'Chandigarh');

INSERT INTO Student
VALUES (6, 'Karan', 20, 'CSE', 'Dehradun');

select * from Student;

-- Q3. Insert multiple records using a single INSERT statement

INSERT INTO Student (Student_ID, Name, Age, Course, City)
VALUES
(7, 'Vikas', 21, 'CSE', 'Haridwar'),
(8, 'Anjali', 20, 'AIML', 'Delhi'),
(9, 'Simran', 19, 'ECE', 'Roorkee');

select * from student;


-- Q4. Insert records into the Employee table


USE lab2_dml;

CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employee
VALUES (101, 'Amit', 'IT', 45000);

INSERT INTO Employee
VALUES (102, 'Priya', 'HR', 38000);

INSERT INTO Employee
VALUES (103, 'Rahul', 'Finance', 52000);

select * from Employee;


-- Q5. Insert records into Department
USE lab2_dml;

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50),
    Location VARCHAR(50)
);


INSERT INTO Department VALUES (1, 'CSE', 'Roorkee');
INSERT INTO Department VALUES (2, 'AIML', 'Dehradun');
INSERT INTO Department VALUES (3, 'ECE', 'Delhi');

SELECT * FROM Department;



-- Q6. Insert records into Product
USE lab2_dml;

CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);



INSERT INTO Product VALUES (1, 'Laptop', 55000, 10);
INSERT INTO Product VALUES (2, 'Mouse', 500, 25);
INSERT INTO Product VALUES (3, 'Keyboard', 1200, 15);

SELECT * FROM Product;

-- Q7. Insert records into Customer

USE lab2_dml;

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);



INSERT INTO Customer VALUES (1, 'Aman Sharma', 'aman@gmail.com', '9876543210');
INSERT INTO Customer VALUES (2, 'Priya Singh', 'priya@gmail.com', '9876543211');
INSERT INTO Customer VALUES (3, 'Rahul Verma', 'rahul@gmail.com', '9876543212');

SELECT * FROM Customer;

-- Q8. Insert records into Course

USE lab2_dml;

CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Duration VARCHAR(30),
    Fees DECIMAL(10,2)
);


INSERT INTO Course VALUES (1, 'B.Tech CSE', '4 Years', 120000);
INSERT INTO Course VALUES (2, 'B.Tech AIML', '4 Years', 130000);
INSERT INTO Course VALUES (3, 'BCA', '3 Years', 80000);

SELECT * FROM Course;


USE lab2_dml;

-- Q9. Insert a student record with values for all columns

INSERT INTO Student
VALUES (10, 'Arjun', 21, 'CSE', 'Delhi');

SELECT * FROM Student;


-- Q10. Insert a student record by specifying only selected columns

INSERT INTO Student (Student_ID, Name, Age, City)
VALUES (11, 'Kunal', 20, 'Meerut');

SELECT * FROM Student;


-- Q11. Update city of a particular student

UPDATE Student
SET City = 'Chandigarh'
WHERE Student_ID = 1;

SELECT * FROM Student;


-- Q12. Update salary of a particular employee

UPDATE Employee
SET Salary = 50000
WHERE Emp_ID = 101;

SELECT * FROM Employee;


-- Q13. Increase salary of all employees by 10%

UPDATE Employee
SET Salary = Salary * 1.10;

SELECT * FROM Employee;


-- Q14. Increase price of all products by 5%

UPDATE Product
SET Price = Price * 1.05;

SELECT * FROM Product;



-- Q15. Change course of a particular student

UPDATE Student
SET Course = 'AIML'
WHERE Student_ID = 2;

SELECT * FROM Student;


-- Q15. Change course of a particular student

UPDATE Student
SET Course = 'AIML'
WHERE Student_ID = 2;

SELECT * FROM Student;


-- Q16. Update department of an employee

UPDATE Employee
SET Department = 'IT'
WHERE Emp_ID = 102;

SELECT * FROM Employee;


-- Q17. Update city of all students from Meerut to Delhi

UPDATE Student
SET City = 'Delhi'
WHERE City = 'Meerut';

SELECT * FROM Student;


-- Q18. Update fees of a particular course

UPDATE Course
SET Fees = 140000
WHERE Course_ID = 2;

SELECT * FROM Course;



-- Q19. Update multiple columns of a student simultaneously

UPDATE Student
SET Age = 22, City = 'Chandigarh'
WHERE Student_ID = 3;

SELECT * FROM Student;



-- Q20. Delete a particular student record using Student_ID

DELETE FROM Student
WHERE Student_ID = 4;

SELECT * FROM Student;



-- Q21. Delete all students belonging to a particular city

DELETE FROM Student
WHERE City = 'Dehradun';

SELECT * FROM Student;


-- Q22. Delete employees whose salary is below a specified amount

DELETE FROM Employee
WHERE Salary < 40000;

SELECT * FROM Employee;



-- Q23. Delete products whose quantity is zero

DELETE FROM Product
WHERE Quantity = 0;

SELECT * FROM Product;



-- Q24. Delete records satisfying multiple conditions using AND/OR

DELETE FROM Student
WHERE (Age < 20 AND City = 'Delhi')
   OR Course = 'ECE';

SELECT * FROM Student;



-- Q25. Complete sequence INSERT, UPDATE and DELETE operations on Student and display after each operation

INSERT INTO Student
VALUES (12, 'Varun', 20, 'CSE', 'Roorkee');

SELECT * FROM Student;

UPDATE Student
SET City = 'Delhi'
WHERE Student_ID = 12;

SELECT * FROM Student;

DELETE FROM Student
WHERE Student_ID = 12;

SELECT * FROM Student;


