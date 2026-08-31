CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Manager_ID INT
);

INSERT INTO Employees (Employee_ID, Employee_Name, Manager_ID) 
VALUES 
    (1, 'Arun', NULL), 
    (2, 'Ravi', 1), 
    (3, 'Priya', 1), 
    (4, 'Kiran', 2);
    
    SELECT 
    e.Employee_Name AS 'Employee Name', 
    m.Employee_Name AS 'Manager Name'
FROM Employees e
LEFT JOIN Employees m 
    ON e.Manager_ID = m.Employee_ID;