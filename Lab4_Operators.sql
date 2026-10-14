-- Q1. Perform addition of two numbers using +
USE lab4_operators;

SELECT 10 + 20 AS Addition;

-- Q2. Perform subtraction using -
SELECT 50 - 20 AS Subtraction;


-- Q3. Perform multiplication using *
SELECT 10 * 5 AS Multiplication;


-- Q4. Perform division using /
SELECT 100 / 4 AS Division;


-- Q5. Calculate total amount as Price × Quantity

use lab2_dml;
SELECT Product_ID, Product_Name, Price, Quantity,
       Price * Quantity AS Total_Amount
FROM Product;



-- Q6. Demonstrate AND with two conditions
SELECT *
FROM Employee
WHERE Salary > 40000 AND Department = 'IT';


-- Q7. Demonstrate OR with two conditions
SELECT *
FROM Employee
WHERE Department = 'IT' OR Department = 'HR';


-- Q8. Demonstrate NOT with a condition
SELECT *
FROM Employee
WHERE NOT Department = 'IT';



-- Q9. Find students belonging to a specific course AND city
SELECT *
FROM Student
WHERE Course = 'CSE' AND City = 'Roorkee';



-- Q10. Find employees belonging to either of two departments
SELECT *
FROM Employee
WHERE Department = 'IT' OR Department = 'HR';



-- Q11. Demonstrate = operator
SELECT *
FROM Employee
WHERE Department = 'IT';




-- Q12. Demonstrate > operator
SELECT *
FROM Employee
WHERE Salary > 40000;



-- Q13. Demonstrate < operator
SELECT *
FROM Employee
WHERE Salary < 40000;



-- Q14. Demonstrate >= and <=
SELECT *
FROM Employee
WHERE Salary >= 30000 AND Salary <= 50000;




-- Q15. Demonstrate <>/!= operator
SELECT *
FROM Employee
WHERE Department <> 'IT';


-- Q16. Demonstrate BETWEEN for salary range
SELECT *
FROM Employee
WHERE Salary BETWEEN 30000 AND 50000;



-- Q17. Demonstrate IN for selecting multiple cities
SELECT *
FROM Student
WHERE City IN ('Roorkee', 'Delhi', 'Dehradun');




-- Q18. Demonstrate NOT IN
SELECT *
FROM Student
WHERE City NOT IN ('Roorkee', 'Delhi');




-- Q19. Demonstrate LIKE for names beginning with a particular letter
SELECT *
FROM Student
WHERE Name LIKE 'A%';



-- Q20. Demonstrate IS NULL and IS NOT NULL
SELECT *
FROM Student
WHERE City IS NULL;

SELECT *
FROM Student
WHERE City IS NOT NULL;



-- Q21. Demonstrate UNION using two compatible queries
SELECT City FROM Student
UNION
SELECT Location AS City FROM Department;



-- Q22. Demonstrate UNION ALL
SELECT City FROM Student
UNION ALL
SELECT Location AS City FROM Department;




SELECT DISTINCT s.City
FROM Student s
INNER JOIN Department d
ON s.City = d.Location;





SELECT DISTINCT s.City
FROM Student s
WHERE NOT EXISTS (
    SELECT 1
    FROM Department d
    WHERE d.Location = s.City
);





-- Q25. Suitable problem using multiple operators together (Arithmetic + Logical + Comparison + Special operators)
SELECT Product_ID, Product_Name, Price, Quantity,
       Price * Quantity AS Total_Amount
FROM Product
WHERE Price * Quantity > 1000
  AND Quantity BETWEEN 1 AND 20
  AND Product_Name LIKE 'L%';


  


