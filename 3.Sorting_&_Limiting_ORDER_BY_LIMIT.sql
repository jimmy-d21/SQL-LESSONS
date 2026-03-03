Sample Table: Employees
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 1 – ORDER BY Salary ascending
SELECT * FROM Employees ORDER BY Salary ASC;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 2 – ORDER BY Salary descending
SELECT * FROM Employees ORDER BY Salary DESC;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 5          | Eve       | Davis    | Finance    | 8000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 1          | John      | Doe      | HR         | 5000   |
| 4          | Bob       | Johnson  | HR         | 5000   |


-- Example 3 – ORDER BY multiple columns
SELECT * FROM Employees ORDER BY Department ASC, Salary DESC;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 3          | Alice     | Brown    | IT         | 7000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 5          | Eve       | Davis    | Finance    | 8000   |
| 1          | John      | Doe      | HR         | 5000   |
| 4          | Bob       | Johnson  | HR         | 5000   |


-- Example 4 – ORDER BY with alias
SELECT FirstName, Salary AS MonthlySalary FROM Employees ORDER BY MonthlySalary DESC;
| FirstName | MonthlySalary |
| --------- | ------------- |
| Eve       | 8000          |
| Alice     | 7000          |
| Jane      | 6000          |
| John      | 5000          |
| Bob       | 5000          |


-- Example 5 – ORDER BY with LIMIT (Top 2 salaries)
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 2;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 5          | Eve       | Davis    | Finance    | 8000   |
| 3          | Alice     | Brown    | IT         | 7000   |


-- Example 6 – ORDER BY with OFFSET (skip rows)
SELECT * FROM Employees ORDER BY Salary DESC LIMIT 2 OFFSET 1;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 3          | Alice     | Brown    | IT         | 7000   |
| 2          | Jane      | Smith    | IT         | 6000   |


-- Example 7 – ORDER BY string column
SELECT * FROM Employees ORDER BY LastName ASC;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 3          | Alice     | Brown    | IT         | 7000   |
| 5          | Eve       | Davis    | Finance    | 8000   |
| 1          | John      | Doe      | HR         | 5000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |


-- Example 8 – ORDER BY with CASE
SELECT FirstName, Department, Salary,
CASE WHEN Salary > 7000 THEN 'High'
     WHEN Salary >= 6000 THEN 'Medium'
     ELSE 'Low' END AS SalaryLevel
FROM Employees
ORDER BY SalaryLevel DESC;
| FirstName | Department | Salary | SalaryLevel |
| --------- | ---------- | ------ | ----------- |
| Eve       | Finance    | 8000   | High        |
| Alice     | IT         | 7000   | Medium      |
| Jane      | IT         | 6000   | Medium      |
| John      | HR         | 5000   | Low         |
| Bob       | HR         | 5000   | Low         |


-- Example 9 – SELECT DISTINCT with ORDER BY
SELECT DISTINCT Department FROM Employees ORDER BY Department ASC;

-- Example 10 – ORDER BY numeric calculation
SELECT FirstName, Salary, Salary*1.1 AS NewSalary FROM Employees ORDER BY NewSalary DESC;