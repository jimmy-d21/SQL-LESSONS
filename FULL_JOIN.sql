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

SELECT e.FirstName, d.DepartmentName
FROM Employees e
FULL JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

| FirstName | DepartmentName |
| --------- | -------------- |
| John      | HR             |
| Jane      | IT             |
| Alice     | IT             |
| Bob       | Finance        |
| Eve       | NULL           |
| NULL      | Marketing      |


-- CROSS JOIN
SELECT e.FirstName, d.DepartmentName
FROM Employees e
CROSS JOIN Departments d;