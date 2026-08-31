-- 1. Create a fresh database so we don't mix up our old tables
CREATE DATABASE JoinTasksDB;
USE JoinTasksDB;

-- 2. Create the exact Departments table needed
CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

INSERT INTO Departments (Department_ID, Department_Name) 
VALUES (10, 'CSE'), (20, 'ECE'), (30, 'EEE'), (40, 'MECH');

-- 3. Create the exact Students table needed for the JOIN tasks
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department_ID INT
);

INSERT INTO Students (Student_ID, Student_Name, Department_ID) 
VALUES (101, 'Rahul', 10), (102, 'Priya', 20), (103, 'Ravi', 10), (104, 'Anu', 30), (105, 'Kiran', NULL);

-- ==========================================
-- 4. RUN TASK 1 (INNER JOIN)
-- ==========================================
SELECT 
    Students.Student_ID, 
    Students.Student_Name, 
    Departments.Department_Name
FROM Students
INNER JOIN Departments 
    ON Students.Department_ID = Departments.Department_ID;
    
SELECT 
    Students.Student_Name, 
    Departments.Department_Name
FROM Students
RIGHT JOIN Departments 
    ON Students.Department_ID = Departments.Department_ID;
    
    -- Get all students (Left Join)
SELECT Students.Student_Name, Departments.Department_Name
FROM Students
LEFT JOIN Departments ON Students.Department_ID = Departments.Department_ID

UNION

-- Get all departments (Right Join)
SELECT Students.Student_Name, Departments.Department_Name
FROM Students
RIGHT JOIN Departments ON Students.Department_ID = Departments.Department_ID;