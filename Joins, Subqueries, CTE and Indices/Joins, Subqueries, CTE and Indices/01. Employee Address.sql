--USE SoftUni
SELECT TOP(5)EmployeeId, JobTitle, a.AddressId, AddressText
FROM Employees AS emp
JOIN 
Addresses AS a
ON a.AddressID = emp.AddressID
ORDER BY AddressID