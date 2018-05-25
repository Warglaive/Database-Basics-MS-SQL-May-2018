USE Minions
ALTER TABLE Minions
	ALTER COLUMN Age INT NULL
INSERT INTO Minions (Id, [Name], Age, TownId)
VALUES
(3, 'Steward', NULL, 2)

INSERT INTO Towns(Id, [Name])
VALUES
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna')