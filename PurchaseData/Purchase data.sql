Create trigger insert_supplier
On Suppliers
After Insert
As
Begin
    Insert Into Suppliers_log(supplier_id, supplier_name, supplier_email, supplier_address, city, country)
	Select * from inserted
End
Go

INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_address, city, country)
VALUES
(1, 'TechZone', 'contact@techzone.pk', 'Street 5, Tech Park', 'Karachi', 'Pakistan'),
(2, 'MobileHub', 'info@mobilehub.pk', 'Plot 23, Industrial Area', 'Lahore', 'Pakistan'),
(3, 'GadgetWorld', 'support@gadgetworld.pk', 'Mall Road', 'Islamabad', 'Pakistan'),
(4, 'PhoneDepot', 'sales@phonedepot.pk', 'Sector 14, Tech Estate', 'Karachi', 'Pakistan'),
(5, 'SmartSolutions', 'service@smartsolutions.pk', 'Tech Boulevard', 'Lahore', 'Pakistan'),
(6, 'DeviceMart', 'help@devicemart.pk', 'Commercial Street', 'Rawalpindi', 'Pakistan'),
(7, 'TechieTown', 'info@techietown.pk', 'Sector 8, Industrial Zone', 'Faisalabad', 'Pakistan'),
(8, 'GizmoStore', 'contact@gizmopk.pk', 'Street 45, City Center', 'Peshawar', 'Pakistan'),
(9, 'PhonePalace', 'support@phonepalace.pk', 'Market Street', 'Multan', 'Pakistan'),
(10, 'MobileMania', 'sales@mobilemania.pk', 'Sector 21, IT Park', 'Quetta', 'Pakistan'),
(11, 'CellCity', 'service@cellcity.pk', 'Avenue 10, Business District', 'Karachi', 'Pakistan'),
(12, 'TechSource', 'info@techsource.pk', 'Sector 15, Tech Town', 'Lahore', 'Pakistan'),
(13, 'MobileWorld', 'contact@mobileworld.pk', 'Street 22, City Center', 'Islamabad', 'Pakistan'),
(14, 'GadgetGear', 'help@gadgetgear.pk', 'Main Road', 'Rawalpindi', 'Pakistan'),
(15, 'PhoneHouse', 'support@phonehouse.pk', 'Sector 5, Industrial Estate', 'Faisalabad', 'Pakistan'),
(16, 'SmartMart', 'info@smartmart.pk', 'Commercial Avenue', 'Peshawar', 'Pakistan'),
(17, 'DeviceHub', 'contact@devicehub.pk', 'Street 9, Tech Park', 'Multan', 'Pakistan'),
(18, 'TechEmporium', 'service@techemporium.pk', 'Market Lane', 'Quetta', 'Pakistan'),
(19, 'GizmoGalaxy', 'info@gizmogalaxy.pk', 'Sector 3, Business Park', 'Karachi', 'Pakistan'),
(20, 'PhoneEmpire', 'sales@phoneempire.pk', 'Street 30, City Center', 'Lahore', 'Pakistan')


Create trigger insert_purchase_details
On Purchase_Details
After Insert
As
Begin
    Insert Into Purchase_Details_log(purchase_id, product_id, supplier_id, purchase_date, quantity, purchase_price)
	Select * from inserted
End
Go

INSERT INTO Purchase_Details (purchase_id, product_id, supplier_id, purchase_date, quantity, purchase_price)
VALUES
(1, 'P1', 1, '2022-01-01', 10, 1000.00),
(2, 'P2', 2, '2022-10-02', 20, 2000.00),
(3, 'P1', 3, '2021-09-03', 15, 1500.00),
(4, 'P4', 4, '2022-01-04', 25, 2500.00),
(5, 'P3', 5, '2024-01-05', 30, 3000.00),
(6, 'P3', 6, '2024-01-06', 12, 1200.00),
(7, 'P1', 7, '2024-05-07', 18, 1800.00),
(8, 'P5', 8, '2022-01-08', 22, 2200.00),
(9, 'P9', 9, '2024-01-09', 14, 1400.00),
(10, 'P10', 10, '2023-01-10', 28, 2800.00),
(11, 'P6', 1, '2023-11-11', 10, 1000.00),
(12, 'P7', 2, '2024-02-12', 20, 2000.00),
(13, 'P8', 3, '2024-03-13', 15, 1500.00),
(14, 'P8', 4, '2021-01-14', 25, 2500.00),
(15, 'P6', 5, '2024-04-15', 30, 3000.00),
(16, 'P6', 6, '2024-01-16', 12, 1200.00),
(17, 'P7', 7, '2021-11-17', 18, 1800.00),
(18, 'P10', 8, '2022-09-18', 22, 2200.00),
(19, 'P11', 9, '2023-12-19', 14, 1400.00),
(20, 'P12', 10, '2023-10-20', 28, 2800.00),
(21, 'P12', 1, '2023-01-21', 10, 1000.00),
(22, 'P13', 2, '2024-03-22', 20, 2000.00),
(23, 'P14', 3, '2024-01-23', 15, 1500.00),
(24, 'P14', 4, '2023-04-24', 25, 2500.00),
(25, 'P15', 5, '2021-07-25', 30, 3000.00),
(26, 'P16', 6, '2024-05-26', 12, 1200.00),
(27, 'P17', 7, '2024-01-27', 18, 1800.00),
(28, 'P18', 8, '2024-02-28', 22, 2200.00),
(29, 'P19', 9, '2021-11-29', 14, 1400.00),
(30, 'P20', 10, '2022-06-30', 28, 2800.00);


