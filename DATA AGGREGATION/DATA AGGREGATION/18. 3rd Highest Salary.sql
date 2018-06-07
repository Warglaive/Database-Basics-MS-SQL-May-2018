SELECT DISTINCT DepartmentID, Salary FROM(
SELECT DepartmentID, Salary, DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC)
 AS [Salary Rank]
 FROM Employees) AS e
 WHERE [Salary Rank] = 3