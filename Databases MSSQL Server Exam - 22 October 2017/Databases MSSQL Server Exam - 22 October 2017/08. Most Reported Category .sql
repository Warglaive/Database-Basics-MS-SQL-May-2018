SELECT Name, COUNT(r.CategoryId) FROM Categories AS c
JOIN Reports AS r
ON r.CategoryId = c.Id
GROUP BY Name
ORDER BY COUNT(r.CategoryId) DESC, c.Name