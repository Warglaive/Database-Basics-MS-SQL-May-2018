--USE SoftUni
SELECT MIN(AverageSalaries.AvgSalaries) AS [MinAverageSalary]
FROM
(
	SELECT AVG(Salary) AS AvgSalaries
	FROM Employees
	GROUP BY DepartmentID
) AS AverageSalaries