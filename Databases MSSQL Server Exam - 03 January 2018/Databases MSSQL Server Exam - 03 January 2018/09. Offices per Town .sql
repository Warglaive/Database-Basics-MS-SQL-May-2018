SELECT t.Name, Count(o.Name) AS [Offices Number] FROM Towns AS t
JOIN Offices AS o
ON o.TownId = t.Id
GROUP BY t.Name
ORDER BY [Offices Number] DESC, t.Name 