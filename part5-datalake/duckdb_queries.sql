Q1
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders
FROM 'D:\Project\customers.csv' c
LEFT JOIN 'D:\Project\orders.json' o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name

Q2
SELECT c.name, SUM(o.total_amount) AS total_value
FROM 'D:\Project\customers.csv' c
JOIN 'D:\Project\orders.json' o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_value DESC
LIMIT 3

Q3
SELECT DISTINCT p.product_name
FROM 'D:\Project\customers.csv' c
JOIN 'D:\Project\orders.json' o
ON c.customer_id = o.customer_id
JOIN 'D:\Project\products.parquet' p
ON o.order_id = p.order_id
WHERE c.city = 'Bangalore'

Q4
SELECT c.name, o.order_date, p.product_name, p.quantity
FROM 'D:\Project\customers.csv' c
JOIN 'D:\Project\orders.json' o
ON c.customer_id = o.customer_id
JOIN 'D:\Project\products.parquet' p
ON o.order_id = p.order_id

