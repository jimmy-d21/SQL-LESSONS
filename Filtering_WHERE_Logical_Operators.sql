-- Example 1 – Simple WHERE
SELECT * FROM Employees WHERE Department = 'IT';

-- Example 2 – WHERE with comparison
SELECT * FROM Employees WHERE Salary > 6000;

-- Example 3 – WHERE with AND
SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 6000;

-- Example 4 – WHERE with OR
SELECT * FROM Employees WHERE Department = 'Finance' OR Salary < 6000;