create login ali1 with password='111'

Use Purchase_detail
create user ali for login ali1

GRANT INSERT, UPDATE, SELECT ON Suppliers to ali
GRANT INSERT, UPDATE, SELECT ON Purchase_Details to ali