SELECT Names, Class
FROM (
	SELECT c.FirstName + ' ' + c.LastName AS [Names], m.Class AS Class
	, RANK() OVER(PARTITION BY c.FirstName + ' ' + c.LastName ORDER BY COUNT(m.Class) DESC) AS [Rank]
		FROM Clients AS c
	JOIN Orders AS o
	ON o.ClientId = c.Id
	JOIN Vehicles AS v
	ON v.Id = o.VehicleId
	JOIN Models AS m
	ON m.Id = v.ModelId
	GROUP BY c.FirstName, c.LastName, m.Class
) AS H
WHERE h.Rank = 1
ORDER BY [Names], Class