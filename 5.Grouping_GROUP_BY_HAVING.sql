Sample Table: Employees
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 1 – GROUP BY department
SELECT Department, COUNT(*) AS NumEmployees FROM Employees GROUP BY Department;
| Department | NumEmployees |
| ---------- | ------------ |
| HR         | 2            |
| IT         | 2            |
| Finance    | 1            |


-- Example 2 – GROUP BY with SUM
SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department;
| Department | TotalSalary |
| ---------- | ----------- |
| HR         | 10000       |
| IT         | 13000       |
| Finance    | 8000        |


-- Example 3 – GROUP BY with AVG and HAVING
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) >= 6000;
| Department | AvgSalary |
| ---------- | --------- |
| IT         | 6500      |
| Finance    | 8000      |


-- Example 4 – GROUP BY with MAX
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department;
| Department | MaxSalary |
| ---------- | --------- |
| HR         | 5000      |
| IT         | 7000      |
| Finance    | 8000      |


-- Example 5 – GROUP BY with MIN
SELECT Department, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department;

-- Example 6 – GROUP BY with multiple columns
SELECT Department, Salary, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department, Salary;

-- Example 7 – GROUP BY with string function
SELECT UPPER(Department) AS DeptUpper, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY UPPER(Department);

-- Example 8 – GROUP BY with HAVING and COUNT
SELECT Department, COUNT(*) AS NumEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;

-- Example 9 – GROUP BY with ORDER BY aggregate
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
ORDER BY TotalSalary DESC;

-- Example 10 – GROUP BY with alias and HAVING
SELECT Department AS Dept, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) < 7000;