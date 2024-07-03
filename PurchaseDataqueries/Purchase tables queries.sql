create procedure total_price_per_year
@purchase_date INT
As
Select Sum(purchase_price) As Total_Purchase
from Purchase_Details where Year(purchase_date)=@purchase_date
Go

exec total_price_per_year @purchase_date='2024'
drop procedure total_price_per_year