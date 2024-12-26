CREATE DATABASE ecommerce_store;
-- data modelling for e-commerce_store
-- Categories
-- products
-- orders
-- order items
-- inventory

USE ecommerce_store;

CREATE TABLE Categories (
             Category_ID INT PRIMARY KEY AUTO_INCREMENT,
             Category_Name VARCHAR(50) NOT NULL,
             Description TEXT,
             Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Customers (
             Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
             First_Name VARCHAR(50) NOT NULL,
             Last_Name VARCHAR(50) NOT NULL,
             Email VARCHAR(100) UNIQUE NOT NULL,
             Phone VARCHAR(20),
             Address TEXT,
             Registration_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Products (
			Product_ID INT PRIMARY KEY AUTO_INCREMENT,
            Product_Name VARCHAR(200) NOT NULL,
            Description TEXT,
            Price DECIMAL(10, 2) NOT NULL,
            Category_ID INT,
            Stock_Quantity INT NOT NULL DEFAULT 0,
            Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID)
);

CREATE TABLE Orders (
             Order_ID INT PRIMARY KEY AUTO_INCREMENT,
             Customer_ID INT NOT NULL,
             Order_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
             Toal_Amount DECIMAL(10,2) NOT NULL,
             Status ENUM('Pending' , 'Processing', 'Shipped', 'Delivered','Cancelled') DEFAULT 'Pending',
             FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Order_Items (
		     Item_ID INT PRIMARY KEY AUTO_INCREMENT,
             Order_ID INT NOT NULL,
             Product_ID INT NOT NULL,
             Quantity INT NOT NULL,
             Unit_Price DECIMAL(10,2) NOT NULL,
             Sub_total DECIMAL(10,2) NOT NULL,
             FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID), 
             FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE Inventory_Transactions (
			Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
            Product_ID INT NOT NULL,
            Quantity INT NOT NULL,
            Transaction_Type ENUM('Purchase', 'Sale', 'Adjustment') NOT NULL,
            Transaction_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
            Notes TEXT,
            FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);
			
	