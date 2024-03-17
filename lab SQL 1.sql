
-- Create database if not exists
CREATE DATABASE IF NOT EXISTS lab_mysql;

-- Use the created database
USE lab_mysql;

-- Create Cars table
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,
    Manufacturer VARCHAR(255),
    Model VARCHAR(255),
    Year INT,
    Color VARCHAR(50)
);

-- Create Customers table
CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Phone_Number VARCHAR(20),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State_Province VARCHAR(100),
    Country VARCHAR(100),
    Zip_Postal_Code VARCHAR(20)
);

-- Create Salespersons table
CREATE TABLE Salespersons (
    Salesperson_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Store VARCHAR(255)
);

-- Create Invoices table
CREATE TABLE Invoices (
    Invoice_Number INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Car_VIN VARCHAR(17),
    Customer_ID INT,
    Salesperson_ID INT,
    FOREIGN KEY (Car_VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID)
);
