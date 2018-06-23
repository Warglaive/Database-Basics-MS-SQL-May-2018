SELECT D.Name AS Departmentname,
       ISNULL(
	          CONVERT(
			          VARCHAR, AVG(DATEDIFF(DAY, R.Opendate, R.Closedate))
					 ), 'no info'
			 ) AS AverageTime
FROM Departments AS D
     JOIN Categories AS C ON C.DepartmentId = D.Id
     LEFT JOIN Reports AS R ON R.CategoryId = C.Id
GROUP BY D.Name
ORDER BY D.Name