CREATE TABLE Suppliers(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(50),
    supplier_email VARCHAR(50),
    supplier_address VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE Suppliers_log(
    log_id INT PRIMARY KEY IDENTITY(1,1),
    supplier_id INT,
    supplier_name VARCHAR(50),
    supplier_email VARCHAR(50),
    supplier_address VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
	log_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE Purchase_Details(
    purchase_id INT PRIMARY KEY,
    product_id VARCHAR(50),
	supplier_id INT,
	purchase_date DATE,
    quantity INT,
    purchase_price DECIMAL(10, 2),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id),
);

CREATE TABLE Purchase_Details_log(
    log_id INT PRIMARY KEY IDENTITY(1,1),
    purchase_id INT,
    product_id VARCHAR(50),
	supplier_id INT,
	purchase_date DATE,
    quantity INT,
    purchase_price DECIMAL(10, 2),
	log_date DATETIME DEFAULT GETDATE()
);

drop table Purchase_Details
drop table Purchase_Details_log
drop table Suppliers
drop table Suppliers_log