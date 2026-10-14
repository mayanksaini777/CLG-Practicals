USE lab3_functions;

-- Q1. Demonstrate ABS() with suitable examples

SELECT ABS(-25) AS Absolute_Value_1,
       ABS(40) AS Absolute_Value_2,
       ABS(-12.5) AS Absolute_Value_3;


USE lab3_functions;

-- Q1. Demonstrate ABS() with suitable examples

SELECT ABS(-25) AS Absolute_Value_1,
       ABS(40) AS Absolute_Value_2,
       ABS(-12.5) AS Absolute_Value_3;

-- Q2. Demonstrate ROUND() with suitable examples

SELECT ROUND(15.678) AS Rounded_Value_1,
       ROUND(15.678, 2) AS Rounded_Value_2,
       ROUND(15.678, 1) AS Rounded_Value_3;



-- Q3. Demonstrate CEIL() and FLOOR()

SELECT CEIL(12.3) AS Ceiling_Value_1,
       FLOOR(12.3) AS Floor_Value_1,
       CEIL(7.8) AS Ceiling_Value_2,
       FLOOR(7.8) AS Floor_Value_2;


-- Q4. Demonstrate MOD() with suitable examples

SELECT MOD(10, 3) AS Remainder_1,
       MOD(20, 6) AS Remainder_2,
       MOD(15, 5) AS Remainder_3;



-- Q5. Calculate the rounded salary of employees

use lab2_dml;
SELECT Emp_ID, Emp_Name, ROUND(Salary) AS Rounded_Salary
FROM Employee;

use lab2_dml;

-- Q6. Find the total number of students using COUNT()

SELECT COUNT(*) AS Total_Students
FROM Student;

-- Q7. Find the total salary of all employees using SUM()

SELECT SUM(Salary) AS Total_Salary
FROM Employee;

-- Q8. Find the average salary using AVG()

SELECT AVG(Salary) AS Average_Salary
FROM Employee;


-- Q9. Find the highest salary using MAX()

SELECT MAX(Salary) AS Highest_Salary
FROM Employee;


-- Q10. Find the lowest salary using MIN()

SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;


-- Q11. Demonstrate UPPER() on student names
SELECT Name, UPPER(Name) AS Uppercase_Name
FROM Student;


-- Q12. Demonstrate LOWER() on student names
SELECT Name, LOWER(Name) AS Lowercase_Name
FROM Student;


-- Q13. Demonstrate LENGTH() on student names
SELECT Name, LENGTH(Name) AS Name_Length
FROM Student;


-- Q14. Demonstrate CONCAT() using first and last names
SELECT CONCAT('Rahul', ' ', 'Sharma') AS Full_Name,
       CONCAT('Aman', ' ', 'Kumar') AS Full_Name_2;



-- Q15. Demonstrate SUBSTRING()/SUBSTR() with suitable examples
SELECT SUBSTRING('Computer Science', 1, 8) AS Example_1,
       SUBSTRING('Computer Science', 10, 7) AS Example_2,
       SUBSTR('Database', 1, 4) AS Example_3;


-- Q16. Convert a number into a character/string value
SELECT CAST(12345 AS CHAR) AS String_Value;


-- Q17. Convert a string into a numeric value
SELECT CAST('2500' AS UNSIGNED) AS Numeric_Value;


-- Q18. Convert a date value into a different format
SELECT DATE_FORMAT('2026-10-13', '%d-%m-%Y') AS Formatted_Date;



-- Q19. Demonstrate CAST() with suitable examples
SELECT CAST('123' AS UNSIGNED) AS Converted_Number,
       CAST(45.678 AS CHAR) AS Converted_String,
       CAST('2026-10-13' AS DATE) AS Converted_Date;



-- Q20. Demonstrate CONVERT() where supported by the DBMS
SELECT CONVERT('12345', UNSIGNED) AS Converted_Number,
       CONVERT(12345, CHAR) AS Converted_String,
       CONVERT('2026-10-13', DATE) AS Converted_Date;



-- Q21. Display the current date using a suitable date function
SELECT CURDATE() AS TodayDate;



-- Q22. Extract the year, month and day from a date
SELECT YEAR('2026-10-13') AS Year,
       MONTH('2026-10-13') AS Month,
       DAY('2026-10-13') AS Day;



-- Q23. Find the difference between two dates
SELECT DATEDIFF('2026-10-13', '2026-10-01') AS Date_Difference;


-- Q24. Add a specified number of days to a date
SELECT DATE_ADD('2026-10-13', INTERVAL 10 DAY) AS New_Date;



-- Q25. Display employees' joining dates in a required date format
ALTER TABLE Employee
ADD COLUMN Joining_Date DATE;


UPDATE Employee
SET Joining_Date = '2025-01-15'
WHERE Emp_ID = 101;

UPDATE Employee
SET Joining_Date = '2025-02-10'
WHERE Emp_ID = 102;

UPDATE Employee
SET Joining_Date = '2025-03-20'
WHERE Emp_ID = 103;


-- Q25. Display employees' joining dates in a required date format
SELECT Emp_ID,
       Emp_Name,
       DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Joining_Date
FROM Employee;




