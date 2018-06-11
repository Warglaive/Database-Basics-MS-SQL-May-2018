CREATE TABLE Majors(
MajorID INT NOT NULL,
[Name] NVARCHAR(50)
)

CREATE TABLE Students(
StudentID INT NOT NULL,
StudentNubmer INT,
StudentName NVARCHAR(50),
MajorID INT NOT NULL
)

CREATE TABLE Agenda(
StudentID INT NOT NULL,
SubjectID INT NOT NULL
)

CREATE TABLE Payments(
PaymentID INT NOT NULL,
PaymentDate DATETIME,
PaymentAmount DECIMAL(15, 2),
StudentID INT NOT NULL
)

CREATE TABLE Subjects(
SubjectID INT NOT NULL,
SubjectName NVARCHAR(50)
)
--SET PRIMARY KEYS CONSTRAINTS
ALTER TABLE Majors
	ADD CONSTRAINT PK_Majors
	PRIMARY KEY(MajorID)
	
ALTER TABLE Students
	ADD CONSTRAINT PK_Students
	PRIMARY KEY(StudentID)

ALTER TABLE Agenda
	ADD CONSTRAINT PK_Agenda
	PRIMARY KEY(StudentID, SubjectID)

ALTER TABLE Payments
	ADD CONSTRAINT PK_Payments
	PRIMARY KEY(PaymentID)

ALTER TABLE Subjects
	ADD CONSTRAINT PK_Subjects
	PRIMARY KEY(SubjectID)

--ADD FOREIGN KEYS CONSTRAINTS

ALTER TABLE Students
	ADD CONSTRAINT FK_Students_Major
	FOREIGN KEY(MajorID)
	REFERENCES Majors(MajorID)

ALTER TABLE Agenda
	ADD CONSTRAINT FK_Agenda_Students
	FOREIGN KEY(StudentID)
	REFERENCES Students(StudentID)

ALTER TABLE Agenda
	ADD CONSTRAINT FK_Agenda_Subjects
	FOREIGN KEY (SubjectID)
	REFERENCES Subjects(SubjectID)

ALTER TABLE Payments
	ADD CONSTRAINT FK_Payments_Students
	FOREIGN KEY(StudentID)
	REFERENCES Students(StudentID)
