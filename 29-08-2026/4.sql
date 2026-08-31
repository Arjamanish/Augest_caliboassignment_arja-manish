USE EcommerceDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    EmailAddress VARCHAR(100),
    JoinDate DATE
);
SELECT DATABASE();
SHOW DATABASES;
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Joining_Date DATE,
    Email VARCHAR(100) UNIQUE
);
SELECT * FROM Employees;