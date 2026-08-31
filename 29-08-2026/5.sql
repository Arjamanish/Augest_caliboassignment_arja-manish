-- final task saturday class
CREATE DATABASE CollegeManagement;
USE CollegeManagement;

CREATE TABLE Students (
    Student_ID INT UNSIGNED PRIMARY KEY, 
    Student_Name VARCHAR(100) NOT NULL, 
    Email VARCHAR(100) UNIQUE NOT NULL, 
    Phone VARCHAR(15) UNIQUE, 
    
    Age TINYINT UNSIGNED, 
    
    Department VARCHAR(50), 
    
    Year TINYINT UNSIGNED, 
    
    CGPA DECIMAL(3, 2) 
);

INSERT INTO Students (Student_ID, Student_Name, Email, Phone, Age, Department, Year, CGPA) 
VALUES
    (1, 'Aarav Patel', 'aarav.p@college.edu', '9876543210', 19, 'CSE', 2, 8.50),
    (2, 'Isha Sharma', 'isha.s@college.edu', '9876543211', 21, 'ECE', 3, 9.10),
    (3, 'Rohan Gupta', 'rohan.g@college.edu', '9876543212', 20, 'Mechanical', 2, 7.80),
    (4, 'Meera Reddy', 'meera.r@college.edu', '9876543213', 22, 'CSE', 4, 8.90),
    (5, 'Kabir Singh', 'kabir.s@college.edu', '9876543214', 18, 'Civil', 1, 7.20),
    (6, 'Ananya Desai', 'ananya.d@college.edu', '9876543215', 21, 'IT', 3, 8.15),
    (7, 'Vikram Malhotra', 'vikram.m@college.edu', '9876543216', 23, 'CSE', 4, 7.90),
    (8, 'Neha Joshi', 'neha.j@college.edu', '9876543217', 19, 'ECE', 2, 8.40),
    (9, 'Aditya Verma', 'aditya.v@college.edu', '9876543218', 20, 'IT', 2, 9.50),
    (10, 'Sneha Rao', 'sneha.r@college.edu', '9876543219', 22, 'Mechanical', 4, 8.75);
    
SELECT * FROM Students;

SELECT * FROM Students WHERE Department = 'CSE';

SELECT * FROM Students WHERE CGPA > 8.00;

SELECT * FROM Students WHERE Age > 20;

ALTER TABLE Students ADD Address VARCHAR(255);
INSERT INTO Students (Student_ID, Student_Name, Email, Phone, Age, Department, Year, CGPA, Address) 
VALUES (11, 'Kiran Kumar', 'kiran.k@college.edu', '9876543220', 20, 'ECE', 2, 8.20, '123 Tech Street');

INSERT INTO Students (Student_ID, Student_Name, Email, Phone, Age, Department, Year, CGPA, Address) 
VALUES (12, 'Sai', 'sai.m@college.edu', '9876543221', 19, 'CSE', 1, 7.50, '456 Campus Road');

INSERT INTO Students (Student_ID, Student_Name, Email, Phone, Age, Department, Year, CGPA, Address) 
VALUES (13, 'Priya Singh', 'priya.s@college.edu', '9876543222', 21, 'IT', 3, 8.80, '789 Hostel Ave');

INSERT INTO Students (Student_ID, Student_Name, Email, Phone, Age, Department, Year, CGPA, Address) 
VALUES 
    (14, 'Arjun Reddy', 'arjun.r@college.edu', '9876543223', 22, 'Mechanical', 4, 7.95, '101 Main St'),
    (15, 'Lakshmi Menon', 'lakshmi.m@college.edu', '9876543224', 20, 'Civil', 2, 9.20, '202 River Blvd');

SELECT * FROM Students;


DESCRIBE Students;