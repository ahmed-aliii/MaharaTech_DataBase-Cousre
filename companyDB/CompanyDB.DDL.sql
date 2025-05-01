use CompanyDB

-- DDL Operations Create/Alter/Drop/Insert Into

--Employee Table
BEGIN
--Employee(SSN , Gender , BDate , FName , LName , DNO , SUP-SSN )
CREATE TABLE Employee
(
SSN int primary key,
FName varchar(20),
LName varchar(20),
Gender varchar(1),
BDate  date ,
DNO INT ,
SUP_SSN INT 
)

--ADD/Remove/Update dataType of Column
ALTER TABLE Employee ADD EmpAddress VARCHAR(50);

ALTER TABLE Employee ALTER COLUMN EmpAddress VARCHAR(10);

ALTER TABLE Employee DROP COLUMN EmpAddress;


DROP TABLE Employee;
END

--Dept Table
BEGIN

--Dept(DNO , DName , LOC , MGR-SSN , HDate)
CREATE TABLE Dept
(
DNO INT PRIMARY KEY,
DName VARCHAR(20),
LOC VARCHAR(20),
HDate DATE,
MGR_SSN INT,
)
ALTER TABLE Dept DROP COLUMN MGR_SSN;
DROP TABLE Dept;
END

--Table Project
BEGIN

--Project(PNUM , PName , LOC , City , DNO)
CREATE TABLE Project
(
PNUM INT,
PName VARCHAR(20),
LOC VARCHAR(20),
City VARCHAR(20),
DNO INT,
PRIMARY KEY(PNUM),
)

DROP TABLE Project; 

END

--Table Dependent
BEGIN
--Dependent(SSN , Name , BDate , Gender)
CREATE TABLE Depend 
(
SSN INT NOT NULL,
DName VARCHAR(20) NOT NULL,
BDate DATE,
Gender VARCHAR(1),
PRIMARY KEY(SSN , DName),
);

DROP TABLE Depend;
 

END

--Table Work_ON
BEGIN

--Work_ON(SSN , PNUM , Hours)
CREATE TABLE Work_on 
(
SSN INT ,
PNUM INT,
WHours INT ,
PRIMARY KEY(SSN , PNUM),
);

DROP TABLE Work_on; 

END


