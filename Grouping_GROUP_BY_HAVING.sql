-- Example 1 – GROUP BY department
SELECT Department, COUNT(*) AS NumEmployees FROM Employees GROUP BY Department;

-- Example 2 – GROUP BY with SUM
SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department;

-- Example 3 – GROUP BY with AVG and HAVING
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) >= 6000;

-- Example 4 – GROUP BY with MAX
SELECT Department, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Department;

-- Example 5 – GROUP BY with MIN
SELECT Department, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Department;