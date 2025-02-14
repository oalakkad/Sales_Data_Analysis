-- Creating Customers table 
CREATE TABLE Customers ( 
customer_id INT PRIMARY KEY, 
name VARCHAR(50), 
city VARCHAR(50), 
total_spent DECIMAL(10,2), 
registration_date DATE 
); 



-- Creating Orders table 
CREATE TABLE Orders ( 
order_id INT PRIMARY KEY, 
customer_id INT, 
order_date DATE, 
amount DECIMAL(10,2), 
status VARCHAR(20), 
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
);

