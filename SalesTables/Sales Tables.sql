CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    customer_address VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Customer_log (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT,
    customer_name VARCHAR(50),
    customer_email VARCHAR(50),
    customer_address VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
	log_date DATETIME DEFAULT GETDATE()

);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(50),
    model VARCHAR(50),
    stock_quantity INT
);

CREATE TABLE Product_log (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    product_id INT,
    product_name VARCHAR(100),
    brand VARCHAR(50),
    model VARCHAR(50),
    stock_quantity INT,
	log_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE SalesDetails (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    customer_id INT,
    sell_price DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE SalesDetails_Log (
    log_id INT PRIMARY KEY IDENTITY(1,1),
    sale_id VARCHAR(50),
    product_id VARCHAR(50),
    sale_date DATE,
    customer_id INT,
    sell_price DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    log_date DATETIME DEFAULT GETDATE()
);

drop table SalesDetails
drop table Customer
drop table Product