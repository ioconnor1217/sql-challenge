SELECT 
    e.EmployeeNo, 
    e.EmployeeLastName, 
    e.EmployeeFirstName, 
    e.EmployeeSex, 
    s.Salary
FROM Employees as e
JOIN Salaries s ON e.EmployeeNo = s.EmployeeNo;

SELECT 
    EmployeeFirstName, 
    EmployeeLastName, 
    EmployeeHireDate
FROM Employees AS e
WHERE EXTRACT(YEAR FROM EmployeeHireDate) = 1986;

SELECT 
    d.DeptNo, 
    d.DeptName, 
    e.EmployeeNo, 
    e.EmployeeLastName, 
    e.EmployeeFirstName
FROM Departments as d
JOIN DeptManager as dm ON d.DeptNo = dm.DeptNo
JOIN Employees as e ON dm.EmployeeNo = e.EmployeeNo;

SELECT 
    d.DeptNo, 
    e.EmployeeNo, 
    e.EmployeeLastName, 
    e.EmployeeFirstName, 
    d.DeptName
FROM Departments as d
JOIN DeptEmployee as de ON d.DeptNo = de.DeptNo
JOIN Employees as e ON de.EmployeeNo = e.EmployeeNo;

SELECT 
    EmployeeFirstName, 
    EmployeeLastName, 
    EmployeeSex
FROM Employees
WHERE EmployeeFirstName = 'Hercules' 
  AND EmployeeLastName LIKE 'B%';

SELECT 
    e.EmployeeNo, 
    e.EmployeeLastName, 
    e.EmployeeFirstName
FROM Employees as e
JOIN DeptEmployee as de ON e.EmployeeNo = de.EmployeeNo
JOIN Departments as d ON de.DeptNo = d.DeptNo
WHERE d.DeptName = 'Sales';

SELECT 
    e.EmployeeNo, 
    e.EmployeeLastName, 
    e.EmployeeFirstName, 
    d.DeptName
FROM Employees as e
JOIN DeptEmployee de ON e.EmployeeNo = de.EmployeeNo
JOIN Departments d ON de.DeptNo = d.DeptNo
WHERE d.DeptName IN ('Sales', 'Development');

SELECT 
    EmployeeLastName, 
    COUNT(*) As Frequency
FROM Employees as e
GROUP BY EmployeeLastName
ORDER BY Frequency DESC;