##Anomaly Analysis

Insert Anomaly- one cannot add data independently as all the other data is unavaiable leading to inconsistent data
Here, without order_id we cannot add new products or new sales representative. 
Example columns are: product_id,	product_name,	category,	unit_price, sales_rep_id	sales_rep_name	sales_rep_email	office_address


Update Anomaly- inconsistencies in updating data which is repeated. 
In order_id, from ORD1170 to ORD1184, Column- Office_address.
The office address under Sale_rep_name of Deepak Joshi is 'Nirman Point'and 'Nirman Pt'
Therefore these 15 rows are inconsistent with the other rows


Delete Anomaly-deleting one cell information will delete all the other related information 
if order_id or an order is deleted, then whole customer data will be deleted
Example column: if Order_id ORD1185 for webcam product is deleted, it will delete the existence of this product from product_name and product_id (P008) 
