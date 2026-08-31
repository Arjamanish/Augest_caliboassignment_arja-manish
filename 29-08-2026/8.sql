
CREATE DATABASE UniversityDB;
USE UniversityDB;

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(50)
);

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
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
VALUES (10, 'CSE'), (20, 'ECE');

INSERT INTO Students (Student_ID, Student_Name, Department_ID) 
VALUES (1, 'Alice', 10), (2, 'Bob', 20), (3, 'Charlie', 10);

INSERT INTO Courses (Course_ID, Course_Name, Department_ID) 
VALUES (101, 'Database Systems', 10), (102, 'Data Structures', 10), (201, 'Signals and Systems', 20);

INSERT INTO Enrollments (Student_ID, Course_ID) 
VALUES (1, 101), (1, 102), (2, 201), (3, 101);
SELECT * FROM Enrollments;

SELECT 
    Students.Student_Name, 
    Departments.Department_Name, 
    Courses.Course_Name
FROM Students
INNER JOIN Departments 
    ON Students.Department_ID = Departments.Department_ID
INNER JOIN Enrollments 
    ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses 
    ON Enrollments.Course_ID = Courses.Course_ID;
    
    SELECT 
    Students.Student_Name, 
    Departments.Department_Name, 
    Courses.Course_Name
FROM Students
INNER JOIN Departments 
    ON Students.Department_ID = Departments.Department_ID
INNER JOIN Enrollments 
    ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses 
    ON Enrollments.Course_ID = Courses.Course_ID
WHERE Departments.Department_Name = 'CSE';
