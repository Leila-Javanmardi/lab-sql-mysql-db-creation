USE lab_mysql;
INSERT INTO Salespersons (staff_id, name, store) 
VALUES 
('S001', 'John Doe', 'Store 1'),
('S002', 'Jack Jill', 'Store 2'),
('S003', 'Alice Smith', 'Store 3'),
('S004', 'Bob Johnson', 'Store 1'),
('S005', 'Emma Brown', 'Store 2');

INSERT INTO Customers(customer_id,name,phone_number,email,address,city,state_province,country,zip_postal_code)
VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', 28045),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', 33130),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'Napoléon.Bonaparte@gmail.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', 75008);

INSERT INTO Cars (car_id,vin, manufacturer, model, year, color) 
VALUES
('12','3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('13','ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
('14','RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
('15','HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
('16','DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
('17','DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

INSERT INTO Invoices (invoice_number, date, car_auto_id , cust_auto_id , staff_auto_id)
VALUES
(852399038, '2018-08-22', 1, 1, 3),
(731166526, '2018-12-31', 2, 2, 5),
(271135104, '2019-01-22', 3, 3, 4);




-- SELECT * FROM Invoices; - did not delete to be able to remeber 
-- DELETE FROM Salespersons WHERE staff_auto_id IN (6, 7, 8, 9, 10); - did not delete to be able to remeber 