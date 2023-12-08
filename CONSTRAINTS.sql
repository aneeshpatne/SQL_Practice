CREATE DATABASE exam1 ; 
use exam1 ; 
CREATE TABLE Customer(
id int PRIMARY KEY, fname varchar(255), Email varchar(255)) ; 
DESC Customer ; 
# CHILD TABLE
CREATE TABLE Orders(orderID int PRIMARY KEY,
 id int , OrderDate date , 
 TotalAmount decimal(10, 2),
 FOREIGN KEY (id) REFERENCES Customer(id)) ; 
 DESC Orders ; 
INSERT INTO Customer  VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Alice Johnson', 'alice.johnson@example.com');
SELECT * FROM Customer ; 
INSERT INTO Orders VALUES
(101, 1, '2023-01-15', 150.00),
(102, 2, '2023-02-20', 200.00),
(103, 1, '2023-03-05', 250.00);
SELECT * FROM Orders ; 

INSERT INTO Customer  VALUES
(1, 'John Doe', 'john.doe@example.com'); 
SHOW ERRORS ; 
INSERT INTO Orders VALUES
(111, 5, '2023-01-15', 150.00) ;
DELETE FROM Customer WHERE id = 1 ;

CREATE TABLE Customer1(
id int, fname varchar(255), Email varchar(255)) ; 
ALTER TABLE Customer1 ADD PRIMARY KEY (ID) ; 
ALTER TABLE Customer1 DROP PRIMARY KEY ; 
ALTER TABLE Customer ADD PRIMARY KEY(Name) ; 
SHOW ERRORS ; 
CREATE TABLE student (
    id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(255)
);
INSERT INTO student (name) values ('john'), ('orton') ; 
SELECT * FROM student ; 
drop TABLE student ; 
CREATE TABLE student (
    id int UNIQUE,
    name varchar(255)
);
INSERT INTO student (id, name) VALUES (1, 'kevin');
INSERT INTO student (id, name) VALUES (1, 'ben');
SHOW ERRORS ; 
SELECT * FROM STUDENT ; 
DROP TABLE STUDENT ; 

CREATE TABLE Departments (
    DepartmentID int AUTO_INCREMENT PRIMARY KEY,
    DepartmentName varchar(255)
);

CREATE TABLE Employees (
    EmployeeID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(255),
    DepartmentID int,
    Position varchar(255),
    Salary decimal(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

INSERT INTO Employees (Name, DepartmentID, Position, Salary) VALUES
('John Doe', 3, 'Software Developer', 70000),
('Jane Smith', 2, 'Financial Analyst', 65000),
('Alice Johnson', 1, 'HR Manager', 75000),
('Bob Brown', 4, 'Marketing Coordinator', 60000);


