--USE SoftUni
SELECT TOP(5) emp.EmployeeID, emp.FirstName, proj.[Name]
FROM Employees AS emp
JOIN EmployeesProjects AS EmpProc
ON EmpProc.EmployeeID = emp.EmployeeID
JOIN Projects AS proj
ON proj.ProjectID = EmpProc.ProjectID
WHERE proj.StartDate > '08.13.2002' AND proj.EndDate IS NULL
ORDER BY emp.EmployeeID