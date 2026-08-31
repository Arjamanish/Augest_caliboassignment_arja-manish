
CREATE DATABASE EcommerceDB;
USE EcommerceDB;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity)
VALUES 
    (1, 'Wireless Mouse', 'Electronics', 25.99, 150),
    (2, 'Mechanical Keyboard', 'Electronics', 89.50, 75),
    (3, ' Chair', 'Furniture', 199.99, 20),
    (4, ' Water Bottle', 'Accessories', 15.00, 300),
    (5, ' Headphones', 'Electronics', 120.00, 45);

SELECT * FROM Products;