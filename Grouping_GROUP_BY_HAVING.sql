-- Example 1 – GROUP BY department
SELECT Department, COUNT(*) AS NumEmployees FROM Employees GROUP BY Department;

-- Example 2 – GROUP BY with SUM
SELECT Department, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Department;