SELECT TOP(3) emp.EmployeeID, FirstName FROM Employees AS emp
FULL JOIN EmployeesProjects AS ep
ON ep.EmployeeID = emp.EmployeeID
WHERE Ep.EmployeeID IS NULL