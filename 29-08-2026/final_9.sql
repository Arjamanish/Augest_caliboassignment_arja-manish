
CREATE DATABASE MasterSystemDB;
USE MasterSystemDB;

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100) NOT NULL,
    Department_ID INT,
    Salary DECIMAL(10, 2),
    Manager_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
    FOREIGN KEY (Manager_ID) REFERENCES Employees(Employee_ID)
);

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100) NOT NULL,
    Department_ID INT,
    CGPA DECIMAL(3, 2),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100) NOT NULL,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Enrollments (
    Student_ID INT,
    Course_ID INT,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

INSERT INTO Departments (Department_ID, Department_Name) 
VALUES 
    (10, 'CSE'), 
    (20, 'ECE'), 
    (30, 'EEE'), 
    (40, 'MECH');

INSERT INTO Employees (Employee_ID, Employee_Name, Department_ID, Salary, Manager_ID) 
VALUES 
    (1, 'Arun', 10, 85000.00, NULL),
    (2, 'Ravi', 10, 60000.00, 1),
    (3, 'Priya', 20, 55000.00, 1),
    (4, 'Kiran', 20, 65000.00, 2),
    (5, 'Anu', 10, 70000.00, 1);

INSERT INTO Students (Student_ID, Student_Name, Department_ID, CGPA) 
VALUES 
    (101, 'Rahul', 10, 8.50),
    (102, 'Priya', 20, 9.10),
    (103, 'Ravi', 10, 7.80),
    (104, 'Anu', 30, 8.90),
    (105, 'Kiran', NULL, 7.20);


INSERT INTO Courses (Course_ID, Course_Name, Department_ID) 
VALUES 
    (101, 'Database Systems', 10), 
    (102, 'Data Structures', 10), 
    (201, 'Signals and Systems', 20);

INSERT INTO Enrollments (Student_ID, Course_ID) 
VALUES 
    (101, 101), 
    (101, 102), 
    (102, 201), 
    (103, 101);


SELECT 
    Students.Student_Name, 
    Departments.Department_Name, 
    Courses.Course_Name
FROM Students
INNER JOIN Departments ON Students.Department_ID = Departments.Department_ID
INNER JOIN Enrollments ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses ON Enrollments.Course_ID = Courses.Course_ID;

SELECT 
    e.Employee_Name AS 'Employee Name', 
    m.Employee_Name AS 'Manager Name'
FROM Employees e
LEFT JOIN Employees m ON e.Manager_ID = m.Employee_ID;

SELECT 
    Departments.Department_Name,
    COUNT(Employees.Employee_ID) AS Total_Employees,
    AVG(Employees.Salary) AS Average_Salary,
    SUM(Employees.Salary) AS Total_Payroll,
    MAX(Employees.Salary) AS Highest_Salary,
    MIN(Employees.Salary) AS Lowest_Salary
FROM Departments
LEFT JOIN Employees ON Departments.Department_ID = Employees.Department_ID
GROUP BY Departments.Department_Name;

SELECT COUNT(*) AS Total_Employees FROM Employees;
SELECT COUNT(*) AS CSE_Employee_Count FROM Employees WHERE Department_ID = 10;
SELECT COUNT(*) AS ECE_Employee_Count FROM Employees WHERE Department_ID = 20;
SELECT COUNT(*) AS High_Earners_Count FROM Employees WHERE Salary > 60000;


SELECT SUM(Salary) AS Total_Payroll FROM Employees;
SELECT SUM(Employees.Salary) AS CSE_Total_Salary FROM Employees JOIN Departments ON Employees.Department_ID = Departments.Department_ID WHERE Departments.Department_Name = 'CSE';
SELECT SUM(Employees.Salary) AS ECE_Total_Salary FROM Employees JOIN Departments ON Employees.Department_ID = Departments.Department_ID WHERE Departments.Department_Name = 'ECE';

SELECT AVG(Salary) AS Average_Salary FROM Employees;
SELECT AVG(Employees.Salary) AS CSE_Avg_Salary FROM Employees JOIN Departments ON Employees.Department_ID = Departments.Department_ID WHERE Departments.Department_Name = 'CSE';
SELECT AVG(Employees.Salary) AS ECE_Avg_Salary FROM Employees JOIN Departments ON Employees.Department_ID = Departments.Department_ID WHERE Departments.Department_Name = 'ECE';

SELECT MIN(Salary) AS Lowest_Salary FROM Employees;

SELECT MAX(Salary) AS Highest_Salary FROM Employees;

SELECT Employee_Name, Salary 
FROM Employees 
ORDER BY Salary DESC 
LIMIT 1;