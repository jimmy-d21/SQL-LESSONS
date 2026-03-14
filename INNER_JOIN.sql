-- Employees
| EmployeeID | FirstName | DepartmentID | Salary |
| ---------- | --------- | ------------ | ------ |
| 1          | John      | 1            | 5000   |
| 2          | Jane      | 2            | 6000   |
| 3          | Alice     | 2            | 7000   |
| 4          | Bob       | 3            | 5500   |
| 5          | Eve       | NULL         | 8000   |

-- Departments
| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 1            | HR             |
| 2            | IT             |
| 3            | Finance        |
| 4            | Marketing      |


-- Basic INNER JOIN
SELECT e.FirstName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

| FirstName | DepartmentName |
| --------- | -------------- |
| John      | HR             |
| Jane      | IT             |
| Alice     | IT             |
| Bob       | Finance        |


-- INNER JOIN with Salary
SELECT e.FirstName, d.DepartmentName, e.Salary
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

| FirstName | DepartmentName | Salary |
| --------- | -------------- | ------ |
| John      | HR             | 5000   |
| Jane      | IT             | 6000   |
| Alice     | IT             | 7000   |
| Bob       | Finance        | 5500   |


-- INNER JOIN with WHERE
SELECT e.FirstName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT';

| FirstName | DepartmentName |
| --------- | -------------- |
| Jane      | IT             |
| Alice     | IT             |
