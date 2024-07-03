Create trigger insert_customer
On Customer
After Insert
As
Begin
    Insert Into Customer_log(customer_id, customer_name, customer_email, customer_address, city, country)
	Select * from inserted
End
Go

INSERT INTO Customer(customer_id, customer_name, customer_email, customer_address, city, country)
VALUES
(1, 'Ali Khan', 'ali.khan@example.com', '123 Liberty St', 'Karachi', 'Pakistan'),
(2, 'Sara Ahmed', 'sara.ahmed@example.com', '456 Garden Rd', 'Lahore', 'Pakistan'),
(3, 'Hamza Sheikh', 'hamza.sheikh@example.com', '789 Clifton Ave', 'Islamabad', 'Pakistan'),
(4, 'Ayesha Anwar', 'ayesha.anwar@example.com', '101 Gulberg Blvd', 'Karachi', 'Pakistan'),
(5, 'Bilal Javed', 'bilal.javed@example.com', '202 Defence Rd', 'Lahore', 'Pakistan'),
(6, 'Mariam Tariq', 'mariam.tariq@example.com', '303 Model Town', 'Faisalabad', 'Pakistan'),
(7, 'Omar Farooq', 'omar.farooq@example.com', '404 Jinnah Ave', 'Rawalpindi', 'Pakistan'),
(8, 'Zainab Qureshi', 'zainab.qureshi@example.com', '505 Canal Rd', 'Multan', 'Pakistan'),
(9, 'Usman Haider', 'usman.haider@example.com', '606 GT Rd', 'Gujranwala', 'Pakistan'),
(10, 'Fatima Nawaz', 'fatima.nawaz@example.com', '707 Saddar St', 'Peshawar', 'Pakistan'),
(11, 'Ahmed Raza', 'ahmed.raza@example.com', '808 University Rd', 'Karachi', 'Pakistan'),
(12, 'Sana Iqbal', 'sana.iqbal@example.com', '909 Mall Rd', 'Lahore', 'Pakistan'),
(13, 'Kashif Ali', 'kashif.ali@example.com', '101 Canal View', 'Islamabad', 'Pakistan'),
(14, 'Rabia Yousuf', 'rabia.yousuf@example.com', '202 Liberty Market', 'Karachi', 'Pakistan'),
(15, 'Hassan Mehmood', 'hassan.mehmood@example.com', '303 Ravi Rd', 'Lahore', 'Pakistan'),
(16, 'Amna Noor', 'amna.noor@example.com', '404 F-10', 'Islamabad', 'Pakistan'),
(17, 'Farhan Saeed', 'farhan.saeed@example.com', '505 Gulshan Iqbal', 'Karachi', 'Pakistan'),
(18, 'Nida Tariq', 'nida.tariq@example.com', '606 Fortress Stadium', 'Lahore', 'Pakistan')
INSERT INTO Customer(customer_id, customer_name, customer_email, customer_address, city, country)
VALUES
(19, 'Rehan Zafar', 'rehan.zafar@example.com', '707 G-8', 'Islamabad', 'Pakistan'),
(20, 'Lubna Shah', 'lubna.shah@example.com', '808 DHA', 'Karachi', 'Pakistan')

Create trigger insert_products
On Product
After Insert
As
Begin
    Insert Into Product_log(product_id, product_name, brand, model, stock_quantity)
	Select * from inserted
End
Go

INSERT INTO Product(product_id, product_name, brand, model, stock_quantity)
VALUES
(101, 'Samsung Galaxy S21', 'Samsung', 'S21', 50),
(102, 'iPhone 12', 'Apple', '12', 30),
(103, 'Huawei P40', 'Huawei', 'P40', 40),
(104, 'OnePlus 8', 'OnePlus', '8', 60),
(105, 'Xiaomi Mi 11', 'Xiaomi', 'Mi 11', 45),
(106, 'Oppo Find X2', 'Oppo', 'Find X2', 50),
(107, 'Vivo V20', 'Vivo', 'V20', 70),
(108, 'Realme 7', 'Realme', '7', 80),
(109, 'Nokia 8.3', 'Nokia', '8.3', 35),
(110, 'Sony Xperia 5 II', 'Sony', 'Xperia 5 II', 20),
(111, 'Samsung Galaxy A52', 'Samsung', 'A52', 55),
(112, 'iPhone 11', 'Apple', '11', 25),
(113, 'Huawei Mate 40', 'Huawei', 'Mate 40', 30),
(114, 'OnePlus Nord', 'OnePlus', 'Nord', 70),
(115, 'Xiaomi Redmi Note 10', 'Xiaomi', 'Redmi Note 10', 65),
(116, 'Oppo Reno5', 'Oppo', 'Reno5', 40),
(117, 'Vivo Y51', 'Vivo', 'Y51', 50),
(118, 'Realme C15', 'Realme', 'C15', 75),
(119, 'Nokia 5.4', 'Nokia', '5.4', 30),
(120, 'Sony Xperia 10 II', 'Sony', 'Xperia 10 II', 25)

Create trigger insert_sales_details
On SalesDetails
After Insert
As
Begin
    Insert Into SalesDetails_log(sale_id, product_id, sale_date, customer_id, sell_price, profit)
	Select * from inserted
End
Go

INSERT INTO SalesDetails(sale_id, product_id, sale_date, customer_id, sell_price, profit)
VALUES
(201, 101, '2024-01-01', 1, 125000.00, 25000.00),
(202, 102, '2023-11-02', 2, 150000.00, 30000.00),
(203, 101, '2021-01-13', 3, 90000.00, 18000.00),
(204, 104, '2024-01-04', 4, 70000.00, 14000.00),
(205, 104, '2024-03-15', 5, 80000.00, 16000.00),
(206, 105, '2022-01-06', 6, 75000.00, 15000.00),
(207, 102, '2024-02-07', 7, 55000.00, 11000.00),
(208, 108, '2022-01-08', 8, 40000.00, 8000.00),
(209, 109, '2021-01-09', 9, 65000.00, 13000.00),
(210, 101, '2023-06-10', 10, 110000.00, 22000.00),
(211, 107, '2024-01-11', 1, 60000.00, 12000.00),
(212, 110, '2023-01-12', 2, 85000.00, 17000.00),
(213, 111, '2024-02-23', 3, 70000.00, 14000.00),
(214, 114, '2024-01-27', 4, 65000.00, 13000.00),
(215, 113, '2021-06-15', 5, 70000.00, 14000.00),
(216, 115, '2024-01-16', 6, 60000.00, 12000.00),
(217, 115, '2023-11-17', 7, 50000.00, 10000.00),
(218, 118, '2024-01-18', 8, 45000.00, 9000.00),
(219, 119, '2022-01-19', 9, 40000.00, 8000.00),
(220, 120, '2024-05-20', 10, 35000.00, 7000.00),
(221, 106, '2024-01-21', 11, 125000.00, 25000.00),
(222, 107, '2024-03-22', 12, 90000.00, 18000.00),
(223, 117, '2024-04-23', 13, 60000.00, 12000.00),
(224, 118, '2022-09-24', 14, 65000.00, 13000.00),
(225, 103, '2021-11-25', 15, 70000.00, 14000.00),
(226, 120, '2024-01-26', 16, 80000.00, 16000.00),
(227, 119, '2024-05-27', 17, 50000.00, 10000.00),
(228, 111, '2022-01-28', 18, 55000.00, 11000.00),
(229, 102, '2021-12-29', 19, 60000.00, 12000.00),
(230, 112, '2022-11-30', 20, 70000.00, 14000.00)


