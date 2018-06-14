SELECT emp.EmployeeID, emp.FirstName, 

CASE
	WHEN
	proj.StartDate >= '01.01.2005'
	THEN NULL
	ELSE Proj.[Name]
END

FROM Employees AS emp
FULL JOIN EmployeesProjects AS EmpProj
ON emp.EmployeeID = EmpProj.EmployeeID
FULL JOIN Projects AS Proj
ON proj.ProjectID = EmpProj.ProjectID
WHERE emp.EmployeeID = 24