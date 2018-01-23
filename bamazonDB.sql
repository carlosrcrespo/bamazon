CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE Products (
	ItemID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(255) NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY(ItemID)
);
INSERT INTO Products 
	(ProductName,DepartmentName,Price,StockQuantity)
VALUES
	('Fender Stratocaster','Guitar',1199.99,100),
    ('Fender Telecaster','Guitar',1099.99,50),
    ('Gibson Les Paul','Guitar',2229.99,20),
    ('Gibson Explorer','Guitar',1111.99,30),
    ('Fender Twin','Amplifier',1199.99,50),
    ('Mesa Boogie F-50','Amplifier',1599.99,20),
    ('Marshall JCM900','Amplifier',1299.99,10),
    ('Ibanez Tube Screamer','Effect',109.99,12),
    ('Line 6 DL4 Delay','Effect',399.99,10000),
    ('Lava Cable','Cable',39.99,200);
    
CREATE TABLE Departments (
	DepartmentID INT(10) UNSIGNED AUTO_INCREMENT NOT NULL,
    DepartmentName VARCHAR(255) NOT NULL,
    OverheadCosts DECIMAL(10,2) DEFAULT 0.00 NOT NULL,
    ProductSales DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY(DepartmentID)
);
INSERT INTO Departments 
	(DepartmentName,OverHeadCosts)
VALUES
	('Cell Phones',1000),
    ('Clothing',200),
    ('Appliances',50),
    ('Instruments',10),
    ('Electronics',100);

SELECT * FROM products;


