create database if not exists lab_mysql;
use lab_mysql;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Cars;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Salespersons;


CREATE TABLE Salespersons (
    staff_auto_id INT AUTO_INCREMENT,
    staff_id  VARCHAR(150) NOT NULL,
    name VARCHAR(150) NOT NULL,
    store VARCHAR(150) NOT NULL,
    PRIMARY KEY(staff_auto_id)
);


CREATE TABLE Customers (
    cust_auto_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(150),
    address VARCHAR(250),
    city VARCHAR(150),
    state_province VARCHAR(150),
    country VARCHAR(100),
    zip_postal_code  INT NOt NULL,
    PRIMARY KEY(cust_auto_id)
);


CREATE TABLE Cars (
    car_auto_id INT AUTO_INCREMENT,
    car_id INT NOT NULL,
    vin VARCHAR(150) NOT NULL,
    manufacturer VARCHAR(150),
    model VARCHAR(150),
    year INT,
    color VARCHAR(150),
    PRIMARY KEY(car_auto_id)
);


CREATE TABLE Invoices (
	inv_auto_id INT AUTO_INCREMENT,
    invoice_number INT NOT NULL,
    date DATE NOT NULL,
    staff_auto_id INT,
    cust_auto_id INT,
    car_auto_id INT,
    PRIMARY KEY(inv_auto_id),
    CONSTRAINT `Invoices_ibfk_1` FOREIGN KEY (`staff_auto_id`) REFERENCES `Salespersons` (`staff_auto_id`),
	CONSTRAINT `Invoices_ibfk_2` FOREIGN KEY (`cust_auto_id`) REFERENCES `Customers` (`cust_auto_id`),
    CONSTRAINT `Invoices_ibfk_3` FOREIGN KEY (`car_auto_id`) REFERENCES `Cars` (`car_auto_id`)
);
