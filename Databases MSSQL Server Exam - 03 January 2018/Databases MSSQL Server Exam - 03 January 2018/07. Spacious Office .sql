SELECT t.Name, o.Name, o.ParkingPlaces FROM Offices AS o
JOIN Towns AS t
ON t.id = o.TownId
WHERE ParkingPlaces > 25
ORDER BY t.Name, o.Id