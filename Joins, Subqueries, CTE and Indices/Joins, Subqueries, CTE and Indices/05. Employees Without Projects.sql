SELECT TOP(3)emp.EmployeeID, emp.FirstName FROM Employees AS emp
FULL JOIN EmployeesProjects AS EmpProj
ON emp.EmployeeID = EmpProj.EmployeeID
WHERE EmpProj.ProjectID IS NULL
ORDER BY EmployeeID