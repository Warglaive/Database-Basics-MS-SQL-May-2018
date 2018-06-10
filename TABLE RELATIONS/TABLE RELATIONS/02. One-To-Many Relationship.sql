CREATE TABLE Models(
ModelID INT NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
ManufacturerID INT NOT NULL
)
CREATE TABLE Manufacturers(
ManufacturerID INT NOT NULL,
[Name] NVARCHAR(50) NOT NULL,
EstablishedONn DATETIME
)

ALTER TABLE Models
	ADD CONSTRAINT PK_Models PRIMARY KEY (ModelID)

ALTER TABLE Manufacturers
	ADD CONSTRAINT PK_Manufacturers PRIMARY KEY(ManufacturerID)

ALTER TABLE Models
	ADD CONSTRAINT FK_Models_Manufacturers
	FOREIGN KEY (ManufacturerID)
	REFERENCES Manufacturers(ManufacturerID)