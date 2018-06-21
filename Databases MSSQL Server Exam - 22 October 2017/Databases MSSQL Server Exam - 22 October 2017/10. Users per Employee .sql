SELECT e.FirstName + ' ' + e.LastName AS [Name],
COUNT(DISTINCT(r.UserId)) AS [User Number]
	FROM Employees AS e
	LEFT JOIN Reports AS r
	ON r.EmployeeId = e.id
	GROUP BY e.FirstName + ' ' + e.LastName 
	ORDER BY [User Number] DESC, Name