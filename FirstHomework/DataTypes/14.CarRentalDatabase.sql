--CREATE DATABASE CarRental
--USE CarRental
CREATE TABLE Categories(
Id INT PRIMARY KEY NOT NULl,
CategoryName VARCHAR(50),
DailyRate DECIMAL(15, 2),
WeeklyRate DECIMAL(15, 2),
MonthlyRate DECIMAL(15, 2),
WeekendRate DECIMAL(15, 2)
)

CREATE TABLE Cars(
Id INT PRIMARY KEY NOT NULL,
PlateNumber INT UNIQUE NOT NULL,
Manufacturer NVARCHAR(MAX) NOT NULL,
Model NVARCHAR(MAX) NOT NULL,
CarYear INT NOT NULL,
CategoryId INT NOT NULL,
Doors INT NOT NULL,
Picture VARBINARY(MAX),
Condition VARCHAR(MAX),
Available BIT
)

CREATE TABLE Employees (
Id INT PRIMARY KEY NOT NULL,
FirstName VARCHAR(MAX) NOT NULL,
LastName VARCHAR(MAX) NOT NULL,
Title NVARCHAR(MAX),
Notes VARCHAR(MAX)
)

CREATE TABLE Customers (
Id INT PRIMARY KEY NOT NULL,
DriverLicenceNumber INT NOT NULL UNIQUE,
FullName VARCHAR(MAX) NOT NULL,
[Address] NVARCHAR(MAX) NOT NULL,
City NVARCHAR(MAX) NOT NULL,
ZipCode INT NOT NULL,
Notes VARCHAR(MAX)
)

CREATE TABLE RentalOrders (
Id INT PRIMARY KEY NOT NULL,
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel INT NOT NULL,
KilometrageStart INT NOT NULL,
KilometrageEnd INT NOT NULL,
TotalKilometrage INT NOT NULL,
StartDate DATETIME NOT NULL,
EndDate DATETIME NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL(15, 2),
TaxRate DECIMAL(15, 2),
OrderStatus BIT NOT NULL,
Notes VARCHAR(MAX)
)
--insert into categories
INSERT INTO Categories(Id, CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
(1, 'MMA', 1.12, 5.80, 24,9),
(2, 'BALL', 2.12, 6.80, 34,3),
(3, 'BOX', 3.12, 7.80, 14,5)

--
INSERT INTO Cars(Id, PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
VALUES
(1, 1323, 'volvo', 's40', 2006, 12, 4, NULL, NULL, 1),
(2, 4318, 'bmw', 'x5', 2002, 6, 4, NULL, NULL, 2),
(3, 9999, 'bugatti', 'veyron', 2020, 99, 2, NULL, NULL, 9)

--
INSERT INTO Employees(Id, FirstName, LastName, Title, Notes)
VALUES
(1, 'Asen', 'Asenov', 'Chistach', 'zdr'),
(2, 'xx', 'yyy', 'hh', 'hi'),
(3, 'mm', 'aa', 'gg', 'bb')
--
INSERT INTO Customers(Id, DriverLicenceNumber, FullName, [Address], City, ZipCode, Notes)
VALUES
(1, 1234, 'babaQga', 'pernik', 'moshino', 2300, NULL),
(2, 6633, 'gg', 'rusiq', 'kvartalo', 11, 'zdr'),
(3, 9578, 'y', 'pakistan', 'teva', 3, 'bb')
--
INSERT INTO RentalOrders(Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)
VALUES
(1, 01, 1001, 10, 20, 100, 200, 300, CONVERT(datetime, '01-02-2013', 103), CONVERT(datetime, '03-02-2013', 103), 2, 4.50, 6.44, 1, NULL),
(2, 01, 1001, 10, 20, 100, 200, 300, CONVERT(datetime, '01-02-2013', 103), CONVERT(datetime, '03-02-2013', 103), 2, 4.50, 6.44, 1, NULL),
(3, 01, 1001, 10, 20, 100, 200, 300, CONVERT(datetime, '01-02-2013', 103), CONVERT(datetime, '03-02-2013', 103), 2, 4.50, 6.44, 1, NULL)