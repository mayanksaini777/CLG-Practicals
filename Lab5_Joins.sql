-- Q1. Demonstrate INNER JOIN between Student and Department
USE lab5_joins;

SELECT *
FROM Student s
INNER JOIN Department d
ON s.Dept_ID = d.Dept_ID;




DESCRIBE Student;
DESCRIBE Department;

-- Q1. Demonstrate INNER JOIN between Student and Department
SELECT *
FROM Student s
INNER JOIN Department d
ON s.City = d.Location;



-- Q2. Display student names along with department names using INNER JOIN
SELECT s.Name AS Student_Name, d.Dept_Name
FROM Student s
INNER JOIN Department d
ON s.City = d.Location;





-- Q3. Display employee names along with department names
SELECT e.Emp_Name, d.Dept_Name
FROM Employee e
INNER JOIN Department d
ON e.Department = d.Dept_Name;





-- Q4. Display students along with course details
SELECT s.Student_ID, s.Name, c.Course_ID, c.Course_Name,
       c.Duration, c.Fees
FROM Student s
INNER JOIN Course c
ON s.Course = c.Course_Name;



-- Q5. Find students belonging to a particular department using INNER JOIN
SELECT s.Student_ID, s.Name, d.Dept_Name
FROM Student s
INNER JOIN Department d
ON s.City = d.Location
WHERE d.Dept_Name = 'CSE';





-- Q6. Demonstrate LEFT OUTER JOIN between Student and Department
SELECT s.Student_ID, s.Name, s.City, d.Dept_Name
FROM Student s
LEFT OUTER JOIN Department d
ON s.City = d.Location;





-- Q7. Display all students, including those who do not have matching department
SELECT s.Student_ID, s.Name, d.Dept_Name
FROM Student s
LEFT JOIN Department d
ON s.City = d.Location;





-- Q8. Demonstrate RIGHT OUTER JOIN between Student and Department
SELECT s.Student_ID, s.Name, d.Dept_ID, d.Dept_Name
FROM Student s
RIGHT OUTER JOIN Department d
ON s.City = d.Location;





-- Q9. Display all departments, including departments having no students
SELECT d.Dept_ID, d.Dept_Name, d.Location, s.Student_ID, s.Name
FROM Department d
LEFT JOIN Student s
ON d.Location = s.City;




-- Q10. Find students not assigned to any department using LEFT JOIN
SELECT s.Student_ID, s.Name, s.City
FROM Student s
LEFT JOIN Department d
ON s.City = d.Location
WHERE d.Dept_ID IS NULL;





-- Q11. Find departments having no students using RIGHT/LEFT JOIN
SELECT d.Dept_ID, d.Dept_Name
FROM Department d
LEFT JOIN Student s
ON d.Location = s.City
WHERE s.Student_ID IS NULL;





-- Q12. FULL OUTER JOIN concept using queries/workaround where supported
SELECT s.Student_ID, s.Name, d.Dept_ID, d.Dept_Name
FROM Student s
LEFT JOIN Department d
ON s.City = d.Location

UNION

SELECT s.Student_ID, s.Name, d.Dept_ID, d.Dept_Name
FROM Student s
RIGHT JOIN Department d
ON s.City = d.Location;





-- Q13. CROSS JOIN between Student and Course
SELECT s.Name, c.Course_Name
FROM Student s
CROSS JOIN Course c;





-- Q14. Number of possible Student-Course combinations using CROSS JOIN
SELECT COUNT(*) AS Total_Combinations
FROM Student
CROSS JOIN Course;





-- Q15. NATURAL JOIN between two suitable tables
SELECT Student_ID, Name, Course, Course_ID, Course_Name, Duration, Fees
FROM Student
NATURAL JOIN Course;






-- Q16. Compare NATURAL JOIN and INNER JOIN
SELECT s.Name, c.Course_Name
FROM Student s
INNER JOIN Course c
ON s.Course = c.Course_Name;





-- Q17. SELF JOIN on Employee to show employee-manager relationships
SELECT e.Emp_Name AS Employee_Name,
       m.Emp_Name AS Manager_Name
FROM Employee e
INNER JOIN Employee m
ON e.Manager_ID = m.Emp_ID;





DESCRIBE Employee;
ALTER TABLE Employee
ADD COLUMN Manager_ID INT NULL;
UPDATE Employee
SET Manager_ID = 101
WHERE Emp_ID = 102;

UPDATE Employee
SET Manager_ID = 101
WHERE Emp_ID = 103;



-- Q17. SELF JOIN on Employee to show employee-manager relationships
SELECT e.Emp_Name AS Employee_Name,
       m.Emp_Name AS Manager_Name
FROM Employee e
INNER JOIN Employee m
ON e.Manager_ID = m.Emp_ID;






-- Q18. Display employees along with managers using SELF JOIN
SELECT e.Emp_ID,
       e.Emp_Name AS Employee_Name,
       m.Emp_Name AS Manager_Name
FROM Employee e
LEFT JOIN Employee m
ON e.Manager_ID = m.Emp_ID;







-- Q19. Join three tables—Student, Department and Course
SELECT s.Student_ID,
       s.Name,
       d.Dept_Name,
       c.Course_Name
FROM Student s
INNER JOIN Department d
ON s.City = d.Location
INNER JOIN Course c
ON s.Course = c.Course_Name;






-- Q20. Display student name, course name and department name using multiple joins
SELECT s.Name AS Student_Name,
       c.Course_Name,
       d.Dept_Name
FROM Student s
INNER JOIN Course c
ON s.Course = c.Course_Name
INNER JOIN Department d
ON s.City = d.Location;






-- Q21. Employees whose salary > average salary of their department using joins/subqueries
SELECT e.Emp_ID, e.Emp_Name, e.Department, e.Salary
FROM Employee e
WHERE e.Salary > (
    SELECT AVG(e2.Salary)
    FROM Employee e2
    WHERE e2.Department = e.Department
);






-- Q22. Department with max number of students using joins and aggregation
SELECT d.Dept_ID, d.Dept_Name, COUNT(s.Student_ID) AS Total_Students
FROM Department d
LEFT JOIN Student s
ON d.Location = s.City
GROUP BY d.Dept_ID, d.Dept_Name
ORDER BY Total_Students DESC
LIMIT 1;






-- Q23. Departments and total number of students in each
SELECT d.Dept_ID, d.Dept_Name, COUNT(s.Student_ID) AS Total_Students
FROM Department d
LEFT JOIN Student s
ON d.Location = s.City
GROUP BY d.Dept_ID, d.Dept_Name;






-- Q24. Courses and number of students enrolled in each
SELECT c.Course_ID, c.Course_Name, COUNT(s.Student_ID) AS Total_Students
FROM Course c
LEFT JOIN Student s
ON c.Course_Name = s.Course
GROUP BY c.Course_ID, c.Course_Name;






-- Q25. Complete query using INNER JOIN, LEFT JOIN, GROUP BY and aggregates to generate student-department-course report
SELECT d.Dept_Name,
       c.Course_Name,
       COUNT(s.Student_ID) AS Total_Students
FROM Department d
LEFT JOIN Student s
ON d.Location = s.City
LEFT JOIN Course c
ON s.Course = c.Course_Name
GROUP BY d.Dept_Name, c.Course_Name;

