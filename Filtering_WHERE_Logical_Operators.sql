-- Example 1 – Simple WHERE
SELECT * FROM Employees WHERE Department = 'IT';

-- Example 2 – WHERE with comparison
SELECT * FROM Employees WHERE Salary > 6000;

-- Example 3 – WHERE with AND
SELECT * FROM Employees WHERE Department = 'IT' AND Salary > 6000;

-- Example 4 – WHERE with OR
SELECT * FROM Employees WHERE Department = 'Finance' OR Salary < 6000;

-- Example 5 – WHERE with NOT
SELECT * FROM Employees WHERE NOT Department = 'HR';

-- Example 6 – WHERE with IN
SELECT * FROM Employees WHERE Department IN ('HR', 'Finance');

-- Example 17 – WHERE with BETWEEN
SELECT * FROM Employees WHERE Salary BETWEEN 5000 AND 7000;

-- Example 8 – WHERE with LIKE
SELECT * FROM Employees WHERE FirstName LIKE 'J%';

-- Example 9 – WHERE with wildcard in LIKE
SELECT * FROM Employees WHERE LastName LIKE '%n%';

-- Example 10 – WHERE with multiple conditions
SELECT * FROM Employees WHERE (Department = 'IT' OR Department = 'Finance') AND Salary > 6500;