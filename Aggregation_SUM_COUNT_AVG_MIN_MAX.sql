-- Example 1 – COUNT total employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Example 2 – COUNT with condition
SELECT COUNT(*) AS ITEmployees FROM Employees WHERE Department = 'IT';

-- Example 3 – SUM of all salaries
SELECT SUM(Salary) AS TotalSalary FROM Employees;

-- Example 4 – AVG salary
SELECT AVG(Salary) AS AvgSalary FROM Employees;

-- Example 5 – MIN salary
SELECT MIN(Salary) AS MinSalary FROM Employees;

-- Example 6 – MAX salary
SELECT MAX(Salary) AS MaxSalary FROM Employees;

-- Example 7 – SUM by department
SELECT Department, SUM(Salary) AS DeptSalary FROM Employees GROUP BY Department;

-- Example 8 – AVG by department
SELECT Department, AVG(Salary) AS AvgDeptSalary FROM Employees GROUP BY Department;


-- Example 9 – COUNT distinct salaries
SELECT COUNT(DISTINCT Salary) AS UniqueSalaries FROM Employees;

-- Example 10 – Aggregation with HAVING
SELECT Department, AVG(Salary) AS AvgDeptSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 6000;