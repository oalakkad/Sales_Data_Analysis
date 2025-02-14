-- Inserting sample data into Customers 
INSERT INTO Customers (customer_id, name, city, total_spent, registration_date) 
VALUES 
(1, 'Alice', 'New York', 500, '2022-01-10'), 
(2, 'Bob', 'Los Angeles', 1200, '2021-11-25'), 
(3, 'Charlie', 'Chicago', 700, '2023-05-17'), 
(4, 'David', 'Houston', 400, '2022-08-20'), 
(5, 'Eve', 'Miami', 1500, '2021-06-30');



-- Inserting sample data into Orders 
INSERT INTO Orders (order_id, customer_id, order_date, amount, status) VALUES 
(101, 1, '2023-01-15', 200, 'Completed'), 
(102, 1, '2023-02-10', 300, 'Completed'), 
(103, 2, '2023-03-05', 500, 'Pending'), 
(104, 3, '2023-04-12', 700, 'Completed'), 
(105, 4, '2023-05-20', 150, 'Completed'), 
(106, 5, '2023-06-25', 600, 'Cancelled'), 
(107, 2, '2023-07-15', 300, 'Completed'), 
(108, 3, '2023-08-10', 500, 'Completed'); 
