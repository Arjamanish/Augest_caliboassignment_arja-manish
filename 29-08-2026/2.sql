-- 1. Create and select the database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- 2. Create the Tables
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(100),
    ISBN VARCHAR(20),
    PublishedYear INT,
    Genre VARCHAR(50),
    AvailableCopies INT,
    TotalCopies INT
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    JoinDate DATE,
    Status VARCHAR(20)
);

CREATE TABLE Borrowing (
    BorrowID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- 3. Insert the Records
INSERT INTO Books (BookID, Title, Author, ISBN, PublishedYear, Genre, AvailableCopies, TotalCopies)
VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Fiction', 3, 5),
    (2, '1984', 'George Orwell', '9780451524935', 1949, 'Sci-Fi', 2, 4),
    (3, 'To Kill a Mockingbird', 'Harper Lee', '9780060935467', 1960, 'Fiction', 1, 3),
    (4, 'The Hobbit', 'J.R.R. Tolkien', '9780345339683', 1937, 'Fantasy', 0, 2),
    (5, 'Sapiens', 'Yuval Noah Harari', '9780062316097', 2011, 'History', 4, 4);

INSERT INTO Members (MemberID, FirstName, LastName, Email, Phone, JoinDate, Status)
VALUES
    (1, 'John', 'Doe', 'john.doe@email.com', '555-0101', '2023-01-15', 'Active'),
    (2, 'Jane', 'Smith', 'jane.smith@email.com', '555-0102', '2023-03-22', 'Active'),
    (3, 'Michael', 'Johnson', 'michael.j@email.com', '555-0103', '2023-06-10', 'Suspended'),
    (4, 'Emily', 'Davis', 'emily.d@email.com', '555-0104', '2023-08-05', 'Active'),
    (5, 'Chris', 'Wilson', 'chris.w@email.com', '555-0105', '2023-11-20', 'Active');

INSERT INTO Borrowing (BorrowID, BookID, MemberID, BorrowDate, DueDate, ReturnDate)
VALUES
    (1, 1, 1, '2023-12-01', '2023-12-15', '2023-12-14'), 
    (2, 2, 2, '2023-12-05', '2023-12-19', NULL),         
    (3, 4, 1, '2023-12-10', '2023-12-24', NULL),         
    (4, 5, 4, '2023-12-12', '2023-12-26', NULL),         
    (5, 3, 3, '2023-11-01', '2023-11-15', NULL);         

SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Borrowing;