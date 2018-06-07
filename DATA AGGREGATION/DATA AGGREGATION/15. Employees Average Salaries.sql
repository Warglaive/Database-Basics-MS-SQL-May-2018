--USE SoftUni
--DROP TABLE NewTABLE
SELECT * INTO [NewTABLE] FROM Employees
WHERE Salary > 30000

DELETE FROM NewTABLE
WHERE ManagerID = 42

UPDATE NewTABLE
SET Salary += 5000
WHERE DepartmentID = 1

SELECT DepartmentId, AVG(Salary) AS [AverageSalary] FROM NewTABLE
GROUP BY DepartmentID 