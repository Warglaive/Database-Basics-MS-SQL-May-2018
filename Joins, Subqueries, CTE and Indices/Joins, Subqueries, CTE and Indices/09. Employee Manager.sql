SELECT emp.EmployeeID, emp.FirstName, emp.ManagerID, manager.[FirstName] 
AS [Manager Name]
FROM Employees AS emp
JOIN Employees AS manager
ON manager.EmployeeID = emp.ManagerID
WHERE emp.ManagerID IN (3, 7)
ORDER BY EmployeeID