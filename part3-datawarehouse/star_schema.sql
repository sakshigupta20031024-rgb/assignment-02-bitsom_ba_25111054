CREATE DATABASE retail_transaction;
USE retail_transaction;


CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL,
    month_name VARCHAR(20) NOT NULL
);

INSERT INTO dim_date VALUES
(1,'2023-01-15',1,2023,'January'),
(2,'2023-01-20',1,2023,'January'),
(3,'2023-02-05',2,2023,'February'),
(4,'2023-02-18',2,2023,'February'),
(5,'2023-03-10',3,2023,'March');


CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO dim_store VALUES
(101,'Store A','Mumbai'),
(102,'Store B','Delhi'),
(103,'Store C','Bangalore');


CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);

INSERT INTO dim_product VALUES
(201,'Laptop','Electronics'),
(202,'Shirt','Clothing'),
(203,'Rice','Grocery'),
(204,'Mobile','Electronics');




CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT NOT NULL,
    store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO fact_sales VALUES
(1,1,101,201,2,50000,100000),
(2,2,102,202,5,1500,7500),
(3,3,103,203,10,60,600),
(4,4,101,204,3,20000,60000),
(5,5,102,201,1,52000,52000),
(6,1,103,202,4,1400,5600),
(7,2,101,203,8,55,440),
(8,3,102,204,2,21000,42000),
(9,4,103,201,1,51000,51000),
(10,5,101,202,6,1600,9600);