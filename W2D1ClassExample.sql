# Week 2 Class Example
-- Jim Habermas
-- ISTE 230

SHOW DATABASES;

DROP DATABASE IF EXISTS  College; 
CREATE DATABASE College;

USE College;

SHOW TABLES;

# CreateAdvisor.sql

CREATE TABLE Advisor(
	employeeID	varchar(9),
	firstName	varchar(25),
	lastName	varchar(25),
	departmentID	varchar(4),
	departmentName	varchar(30));

show tables;

describe Advisor;

ALTER TABLE Advisor ADD PRIMARY KEY(employeeID);


# InsertAdvisor.sql
INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'123456789',
	'Elissa',
	'Weeden',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'012345678',
	'Steve',
	'Zilora',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'234567890',
	'Ed',
	'Holden',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'345678901',
	'Dianne',
	'Bills',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'456789012',
	'Bill',
	'Stratton',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'567890123',
	'Jai',
	'Kang',
	'4002',
	'Information Technology');
	
INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'678901234',
	'Nick',
	'Therios',
	'4002',
	'Information Technology');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'789012345',
	'Joe',
	'Programmer',
	'4003',
	'Computer Science');

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'890123456',
	'Ima',
	'Engineer',
	'4010',
	'Software Engineering'
	);

INSERT INTO Advisor(
	employeeID,
	firstName,
	lastName,
	departmentID,
	departmentName)
VALUES(
	'901234567',
	'Steve',
	'Engineer',
	'4010',
	'Software Engineering'
	);
	
# CreateOtherDeptFac.sql


CREATE TABLE OtherDeptFac(
	empID		varchar(9),
	nameF		varchar(25),
	nameL		varchar(25),
	advisingCode	boolean,
	PRIMARY KEY (empID)      );

show tables;

describe OtherDeptFac;

INSERT INTO OtherDeptFac(
	empID,
	nameF,
	nameL,
	advisingCode)
VALUES(
	'987651234',
	'Jane',
	'Torre',
	true);

INSERT INTO OtherDeptFac(
	empID,
	nameF,
	nameL,
	advisingCode)
VALUES(
	'876543210',
	'Joe',
	'Nonadvisor',
	false);


SELECT empID, nameF, nameL FROM OtherDeptfac
          WHERE advisingCode=true;


-- INSERT INTO Advisor (
--			employeeID,
--			firstName,
--			lastName,
--			departmentID,
--			departmentName)
--	SELECT empID, nameF, nameL, '4050', 'NSSA'
--		FROM OtherDeptFac
--		WHERE (advisingCode = true);


SELECT * FROM Advisor;
