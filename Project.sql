CREATE DATABASE company;
USE company;
CREATE TABLE workers (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(40),
    Age INT,
    Department VARCHAR(30),
    Shift VARCHAR(10),
    Salary INT
);
INSERT INTO workers (Name, Age, Department, Shift, Salary)
VALUES
('Rahul', 25, 'Production', 'A', 45000),
('Amit', 30, 'Production', 'B', 50000),
('Priya', 28, 'IT', 'A', 60000),
('Neha', 24, 'IT', 'B', 70000),
('Ravi', 32, 'HR', 'A', 40000),
('Ankit', 27, 'Production', 'A', 55000);
SELECT * FROM workers;
SELECT Name, Department, Salary
FROM workers;
SELECT *
FROM workers
WHERE Department = 'Production';
SELECT *
FROM workers
WHERE Salary > 50000;
SELECT *
FROM workers
WHERE Department = 'Production'
AND Salary > 50000;
SELECT *
FROM workers
WHERE Department = 'Production'
OR Department = 'IT';
SELECT *
FROM workers
WHERE Department IN ('Production', 'IT');
SELECT *
FROM workers
WHERE Name LIKE 'R%';
SELECT *
FROM workers
WHERE Name LIKE '%a';
SELECT *
FROM workers
WHERE Name LIKE '%a%';
SELECT *
FROM workers
WHERE Salary BETWEEN 45000 AND 60000;
SELECT *
FROM workers
ORDER BY Salary DESC;
SELECT *
FROM workers
ORDER BY Salary ASC;
SELECT *
FROM workers
ORDER BY Salary DESC
LIMIT 2;
SELECT *
FROM workers
ORDER BY Salary DESC
LIMIT 2 offset 2;
SELECT COUNT(*) AS Total_Employees
FROM workers;
SELECT SUM(Salary) AS Total_Salary
FROM workers;
SELECT AVG(Salary) AS Average_Salary
FROM workers;
SELECT MAX(Salary) AS Highest_Salary
FROM workers;
SELECT MIN(Salary) AS Lowest_Salary
FROM workers;
SELECT Department, AVG(Salary) AS Average_Salary
FROM workers
GROUP BY Department;
SELECT Department, COUNT(*) AS Employee_Count
FROM workers
GROUP BY Department;
SELECT Department, AVG(Salary) AS Average_Salary
FROM workers
GROUP BY Department
HAVING AVG(Salary) > 50000;
UPDATE workers
SET Salary = 48000
WHERE Name = 'Rahul';
DELETE FROM workers
WHERE Name = 'Ankit';
SELECT Name, Age,
CASE
    WHEN Age >= 30 THEN 'Senior'
    WHEN Age >= 25 THEN 'Mid-Level'
    ELSE 'Junior'
END AS Experience_Level
FROM workers;
SELECT workers.Name,
       workers.Department,
       departments.City
FROM workers
JOIN departments
ON workers.Department = departments.Department;
SELECT workers.Name,
       workers.Department,
       departments.Manager
FROM workers
JOIN departments
ON workers.Department = departments.Department;