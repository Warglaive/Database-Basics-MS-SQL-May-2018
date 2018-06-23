CREATE PROC usp_AssignEmployeeToReport(@employeeId INT, @reportId INT)
AS
BEGIN
    BEGIN TRAN
		DECLARE @categoryId INT= (
								 SELECT Categoryid
								 FROM Reports
								 WHERE Id = @reportId);
		/*IF (@categoryId IS NULL)
		BEGIN;
		   THROW 50011,'Invalid report Id!', 1;
		   return;
		END*/

		DECLARE @employeeDepId INT= (
									SELECT Departmentid
									FROM Employees
									WHERE Id = @employeeId);
		/*IF (@employeeDepId IS NULL)
		BEGIN;
		   THROW 50012,'Invalid employee Id!', 1;
		   RETURN;
		END*/

		DECLARE @categoryDepId INT= (
									SELECT Departmentid
									FROM Categories
									WHERE Id = @categoryId);
		UPDATE Reports
		SET EmployeeId = @employeeId
		WHERE Id = @reportId

		IF @employeeId IS NOT NULL
		   AND @categoryDepId <> @employeeDepId
		BEGIN 
			ROLLBACK;
			THROW 50013,'Employee doesn''t belong to the appropriate department!', 1;
		END;   
    COMMIT; 
END;