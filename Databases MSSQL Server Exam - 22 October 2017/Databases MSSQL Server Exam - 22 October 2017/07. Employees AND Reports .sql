SELECT emp.FirstName, emp.LastName, r.Description, FORMAT(r.OpenDate,'yyyy-MM-dd') AS [OpenDate]
	FROM Employees AS emp
JOIN Reports AS r
ON r.EmployeeId = emp.Id
WHERE r.EmployeeId IS NOT NULL
ORDER BY emp.Id, r.OpenDate, r.Id