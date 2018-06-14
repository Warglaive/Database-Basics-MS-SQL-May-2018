--USE SoftUni
SELECT emp.FirstName,emp.LastName,emp.HireDate,dep.[Name]
 FROM Employees AS emp
JOIN Departments AS dep
ON emp.DepartmentID = dep.DepartmentID
WHERE emp.HireDate > '1.1.1999' AND dep.[Name] IN ('Sales', 'Finance')
ORDER BY emp.HireDate