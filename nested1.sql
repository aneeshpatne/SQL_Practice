CREATE DATABASE exam2; 
USE exam2; 
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
INSERT INTO customers (customer_id, customer_name, customer_email) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Alice Johnson', 'alice.johnson@example.com'),
(4, 'Bob Brown', 'bob.brown@example.com'),
(5, 'Carol White', 'carol.white@example.com'),
(6, 'David Green', 'david.green@example.com'),
(7, 'Eva Black', 'eva.black@example.com'),
(8, 'Frank Gray', 'frank.gray@example.com'),
(9, 'Grace Hall', 'grace.hall@example.com'),
(10, 'Henry Adams', 'henry.adams@example.com');

INSERT INTO orders (order_id, customer_id, order_date, order_amount) VALUES
(101, 1, '2023-01-01', 100.00),
(102, 2, '2023-01-02', 150.00),
(103, 3, '2023-01-03', 200.00),
(104, 4, '2023-01-04', 250.00),
(105, 5, '2023-01-05', 300.00),
(106, 1, '2023-01-06', 350.00),
(107, 2, '2023-01-07', 400.00),
(108, 3, '2023-01-08', 450.00),
(109, 4, '2023-01-09', 500.00),
(110, 5, '2023-01-10', 550.00);

SELECT customer_name FROM Customers WHERE customer_id IN
 (SELECT customer_id from Orders WHERE order_amount >300);

SELECT customer_name, 
       (SELECT MAX(order_amount) FROM orders WHERE orders.customer_id = customers.customer_id) AS highest_order
FROM customers;