Create Procedure update_stock
@stock_quantity INT,
@product_id INT
As
update Product
Set stock_quantity=@stock_quantity
where product_id=@product_id
Go

Exec update_stock @stock_quantity='100',@product_id=101

select * from Product Order By product_id

--drop table Product

Create Procedure delete_data
@sale_id INT
As
Delete from SalesDetails
where sale_id=@sale_id
Go

Exec delete_data @sale_id=205

select * from SalesDetails

Create Procedure retrieve_customers

As
Select customer_name,customer_address,product_name,model,sell_price,profit
from Customer 
Inner Join SalesDetails On Customer.customer_id=SalesDetails.customer_id
Inner Join Product On Product.product_id=SalesDetails.product_id
Go

exec retrieve_customers

Create Procedure retrieve_specific_customers
@customer_name VARCHAR(50)
As
Select customer_name,customer_address,product_name,model,sell_price,profit
from Customer 
Inner Join SalesDetails On Customer.customer_id=SalesDetails.customer_id
Inner Join Product On Product.product_id=SalesDetails.product_id
where customer_name=@customer_name
Go

exec retrieve_specific_customers @customer_name='Hamza Sheikh'