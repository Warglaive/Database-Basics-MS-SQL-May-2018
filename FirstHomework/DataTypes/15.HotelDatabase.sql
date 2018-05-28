--CREATE DATABASE Hotel
--USE Hotel
CREATE TABLE Employees(
Id INT PRIMARY KEY NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Title VARCHAR(50),
Notes NVARCHAR(MAX)
)
--
CREATE TABLE Customers(
AccountNumber INT PRIMARY KEY NOT NULL,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
PhoneNumber INT NOT NULL,
EmergencyName VARCHAR(MAX) NOT NULL,
EmergencyNumber INT NOT NULL,
Notes NVARCHAR(MAX)
)
--
CREATE TABLE RoomStatus(
RoomStatus VARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)
--
CREATE TABLE RoomTypes(
RoomType VARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)
--
CREATE TABLE BedTypes(
BedType VARCHAR(20) PRIMARY KEY NOT NULL,
Notes NVARCHAR(MAX)
)
--
CREATE TABLE Rooms(
RoomNumber INT PRIMARY KEY NOT NULL,
RoomType VARCHAR(20) NOT NULL,
BedType VARCHAR(20) NOT NULL,
Rate DECIMAL(15, 2),
RoomStatus VARCHAR(20),
Notes NVARCHAR(MAX)
)
--
CREATE TABLE Payments(
Id INT PRIMARY KEY NOT NULL,
EmployeeId INT NOT NULL, 
PaymentDate DATETIME NOT NULL,
AccountNumber INT NOT NULL,
FirstDateOccupied DATETIME NOT NULL,
LastDateOccupied DATETIME NOT NULL,
TotalDays INT NOT NULL,
AmountCharged DECIMAL(15, 2) NOT NULL,
TaxRate DECIMAL(15, 2) NOT NULL,
TaxAmount DECIMAL(15, 2) NOT NULL,
PaymentTotal DECIMAL(15, 2) NOT NULL,
Notes NVARCHAR(MAX)
)
--
CREATE TABLE Occupancies(
Id INT PRIMARY KEY NOT NULL,
EmployeeId INT NOT NULL,
DateOccupied DATETIME NOT NULL,
AccountNumber INT NOT NULL,
RoomNumber INT NOT NULL,
RateApplied DECIMAL(15, 2),
PhoneCharge DECIMAL(15, 2),
Notes NVARCHAR(MAX)
)

INSERT INTO Employees(Id, FirstName, LastName, Title, Notes)
VALUES
(1, 'qq', 'ww', NULL, NULL),
(2, 'aa', 'ss', 'MM', 'test'),
(3, 'xx', 'cc', NULL, NULL)

INSERT INTO Customers(AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
VALUES
(1, 'qq', 'ww', 123, 'help', 321, NULL),
(2, 'gg', 'xx', 951, 'hsssssp', 66, 'xaxa'),
(3, 'pp', 'nn', 159, 'bbb', 1, 'zdr')

INSERT INTO RoomStatus(RoomStatus, Notes)
VALUES
(1, 'ne baca'),
(2, 'baca'),
(3, 'i tva ne baca')

INSERT INTO RoomTypes(RoomType, Notes)
VALUES
('1 staq', 'typo'),
('2 stai', 'ne typo'),
('3 stai', 'qko')

INSERT INTO BedTypes(BedType, Notes)
VALUES
('golemo', NULL),
('po-golemo', 'x'),
('nai-golemo', 'z')

INSERT INTO Rooms(RoomNumber, RoomType,	BedType, Rate, RoomStatus, Notes)
VALUES
(1, 'golema', 'malko', 1.2, 1, NULL),
(2, 'xx', 'golem', 2.2, 0, 'xx'),
(3, 'zz', 'malko', 5.2, 1, 'zz')

INSERT INTO Payments(Id, EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
VALUES
(1, 1, '01-02-2001', 1, '02-02-2001', '01-03-2001', 11, 12.5, 3.01, 12, 200, NULL),
(2, 1, '01-02-2001', 1, '02-02-2001', '01-03-2003', 12, 16.5, 4.01, 12, 200, NULL),
(3, 1, '01-02-2001', 1, '02-02-2001', '01-03-2002', 13, 19.5, 3.01, 12, 200, NULL)

INSERT INTO Occupancies(Id, EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
VALUES
(1, 1, '01-03-2002', 11, 5, 2.1, 10, NULL),
(2, 1, '01-03-2002', 11, 5, 2.1, 10, NULL),
(3, 1, '01-03-2002', 11, 5, 2.1, 10, NULL)