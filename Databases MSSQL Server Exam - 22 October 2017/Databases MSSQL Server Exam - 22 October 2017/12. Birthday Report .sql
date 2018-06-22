--USE ReportService
SELECT DISTINCT c.[Name] AS [Category Name] FROM Categories AS c
JOIN Reports AS r
ON r.CategoryId = c.Id
JOIN Users AS u
ON u.Id = r.UserId
WHERE DATEPART(DAY, u.BirthDate) = DATEPART(DAY, r.OpenDate)
ORDER BY [Category Name]