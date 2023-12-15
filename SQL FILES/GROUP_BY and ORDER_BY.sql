use exam1; 
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    quantity INT,
    sale_amount DECIMAL(10, 2),
    sale_date DATE,
    region VARCHAR(100)
);
INSERT INTO sales_data (sale_id, product_name, quantity, sale_amount, sale_date, region) VALUES
(1, 'Widget', 3, 30.00, '2023-01-01', 'North'),
(2, 'Widget', 1, 10.00, '2023-01-03', 'South'),
(3, 'Gadget', 2, 40.00, '2023-01-02', 'West'),
(4, 'Widget', 4, 40.00, '2023-01-01', 'North'),
(5, 'Thingamajig', 1, 15.00, '2023-01-04', 'East');
SELECT * FROM sales_data ; 
SELECT REGION , max(sale_amount)  FROM sales_data GROUP BY REGION ;
SELECT product_name , count(sale_amount)  FROM sales_data GROUP BY product_name ;
SELECT product_name , max(sale_amount)  FROM sales_data GROUP BY product_name ; 
SELECT REGION , max(sale_amount) as amt FROM sales_data GROUP BY REGION HAVING amt > 10;
SELECT product_name , count(sale_amount) as count FROM sales_data GROUP BY product_name having count>1;
SELECT REGION , max(sale_amount) as amt FROM sales_data GROUP BY REGION ORDER BY amt;
SELECT REGION , max(sale_amount) as amt FROM sales_data GROUP BY REGION ORDER BY amt DESC;
SELECT REGION , max(sale_amount) as amt FROM sales_data GROUP BY REGION HAVING amt>10 ORDER BY amt;