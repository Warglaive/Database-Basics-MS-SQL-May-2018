SELECT DISTINCT Username FROM Users AS u
JOIN Reports AS r
ON r.UserId = u.Id
JOIN Categories AS c
ON c.Id = r.CategoryId
WHERE u.Username LIKE '[0-9]%' AND CAST(c.Id AS NVARCHAR) = LEFT(u.Username, 1)
OR u.Username LIKE '%[0-9]' AND CAST(c.id AS NVARCHAR) = RIGHT(u.Username, 1)