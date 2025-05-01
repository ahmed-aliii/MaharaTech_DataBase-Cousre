USE CompanyDB

--DML  Insert Update Delete Merge

--Employee Table
BEGIN

--Insert
INSERT INTO Employee VALUES(1,'Ahmed','Ali' ,'M','1999-12-20', 10 ,NULL);

INSERT INTO Employee(SSN, FName, LName, Gender, BDate, DNO, SUP_SSN)
VALUES(2 , 'Sally' , 'Salah' , 'F' , '10/30/2000' , 20 , 1 );

INSERT INTO Employee VALUES(3 , 'Ahmed' , 'Youssef' , 'M' , '1/1/2000' , 30 , 1);
INSERT INTO Employee VALUES(4 , 'Mohamed' , NULL , 'M' , '1/1/2000' , 30 , 1);

-- Update
UPDATE Employee
SET FName = 'Ahmed' , LName = 'Ali ' , Gender = 'M' , BDate = '12/20/1999' , DNO=10
WHERE SSN = 1;

UPDATE Employee
SET  BDate = '11/30/1995'
WHERE SSN = 4;

--Delete Data Not Table
DELETE FROM Employee;

--Delete Row/s
DELETE FROM Employee 
WHERE Gender = 'F';

--Delete Colmun from Data
UPDATE Employee
SET Gender = NULL;
 

END

--Dept Table
BEGIN


--insert 
INSERT INTO Dept VALUES(10 , 'CEO'  , 'Cairo' , '10/20/2020' , 1);
INSERT INTO Dept VALUES(20 , 'Dept01'  , 'New Capital' , '10/2/2022' , 2);
INSERT INTO Dept VALUES(30 , 'Dept02'  , 'Alex' , '1/1/2010' , 3);

--Delete Data
DELETE FROM Dept;
END

--Project Table
BEGIN

INSERT INTO Project VALUES(101 , 'Mobile App' , 'New Cairo' , 'Cairo' , 20);
INSERT INTO Project VALUES(102 , 'Web App' , 'Mesla' , 'Fayoum' , 30);


 

END

-- Depend Table
BEGIN

INSERT INTO Depend VALUES( 1 , 'Alaa' , '5/20/1994' , 'M');
INSERT INTO Depend VALUES( 1 , 'Mohamed' , '5/20/1996' , 'M');

END

--Work_on Table
BEGIN

 INSERT INTO Work_on VALUES(2 , 101 , 20);
 INSERT INTO Work_on VALUES(3 , 101 , 40);
 INSERT INTO Work_on VALUES(4 , 102 , 50);

SELECT * FROM Work_on wo;
END





