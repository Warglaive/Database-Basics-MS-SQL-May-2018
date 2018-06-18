CREATE PROC usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
BEGIN TRAN
DELETE FROM EmployeesProjects
	WHERE EmployeeID IN (
	SELECT EmployeeID FROM Employees
	WHERE DepartmentID = 1)
	
ALTER TABLE Departments
	ALTER COLUMN ManagerID INT

UPDATE Employees
	SET ManagerID = NULL
	WHERE ManagerID IN(
	SELECT EmployeeID FROM Employees
	WHERE DepartmentID = 1
	)

UPDATE Departments
	SET ManagerID = NULL
	WHERE ManagerID IN (
	SELECT EmployeeID FROM Employees
	WHERE DepartmentID = 1
	)

DELETE FROM Employees
	WHERE DepartmentID = 1

DELETE FROM Departments
	WHERE DepartmentID = 1

SELECT * FROM Employees
	WHERE DepartmentID = 1

--ROLLBACK TRAN