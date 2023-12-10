use exam1 ; 
SELECT * FROM Departments, Employees ; 
SELECT Name,DepartmentName ,Employees.Position, Employees.Salary FROM Departments INNER JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID ; 
SELECT Name,DepartmentName ,Employees.Position, Employees.Salary FROM Departments LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID ; 
SELECT Name,DepartmentName ,Employees.Position, Employees.Salary FROM Departments RIGHT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID ; 
SELECT DepartmentName FROM Departments UNION SELECT Salary FROM Employees ; 
SELECT * FROM EMPLOYEES ; 
SELECT sum(salary) as SUM FROM EMPLOYEES; 
SELECT avg(salary) as AVERAGE FROM EMPLOYEES; 
SELECT COUNT(salary) as COUNT FROM EMPLOYEES;
SELECT COUNT(*) as COUNT FROM EMPLOYEES;
SELECT min(salary) as MIN FROM EMPLOYEES; 
SELECT max(salary) as MAX FROM EMPLOYEES; 
