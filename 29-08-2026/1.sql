CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(100)
);
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) 
VALUES 
    (1, 'Alice', 'Smith', 20, 'Computer Science'),
    (2, 'Bob', 'Johnson', 22, 'Mathematics'),
    (3, 'Charlie', 'Davis', 19, 'Physics'),
    (4, 'Diana', 'Evans', 21, 'Biology'),
    (5, 'Evan', 'Wright', 23, 'History');

SELECT * FROM Students;