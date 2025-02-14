# Retail Sales Analysis - SQL Project

## 📌 Project Overview

This project is a comprehensive SQL-based **Retail Sales Analysis**, focusing on querying customer and order data. The dataset consists of two main tables:

- **customers**: Contains customer details, including total spending.
- **orders**: Stores information about each order, including order amount and status.

The SQL queries in this project demonstrate various analytical techniques such as **joins, filtering, aggregation, subqueries, and set operations** to extract meaningful insights from the retail dataset.

---

## 📂 Dataset Description

### **customers Table**

| Column       | Data Type | Description                         |
| ------------ | --------- | ----------------------------------- |
| customer\_id | INT       | Unique identifier for each customer |
| name         | VARCHAR   | Customer's name                     |
| total\_spent | DECIMAL   | Total amount spent by the customer  |

### **orders Table**

| Column       | Data Type | Description                      |
| ------------ | --------- | -------------------------------- |
| order\_id    | INT       | Unique identifier for each order |
| customer\_id | INT       | Customer who placed the order    |
| amount       | DECIMAL   | Order amount                     |
| status       | VARCHAR   | Order status (e.g., 'Completed') |

---

## 🔍 SQL Queries Included

This project contains various SQL queries that perform different types of data analysis:

### **Basic Queries**
- Retrieve all customer and order data.
- Count the total number of orders per customer.

### **Filtering & Aggregation**
- Find customers who have placed at least one order over \$600.
- Retrieve customers who have spent more than the average total spending across all customers.
- Find the average order amount per customer and filter those above \$300.
- Find customers who have never placed an order.

### **Joins & Subqueries**
- Retrieve each customer's highest order amount.
- Find customers who have placed more than the average number of orders across all customers.
- Identify orders where the order amount is greater than the customer's average order amount.

### **Advanced Queries**
- Retrieve customers who have spent more than their own highest single order amount.
- Find orders where the amount exceeds the total spending of at least one customer.
- Identify customers who spent more than \$500 from completed orders only.
- Find the customer(s) who placed the highest order amount.

---

## ⚙️ How to Use

1. **Set Up the Database**
   - Import the `customers` and `orders` tables into your SQL environment.
   - Use the following SQL statements to create the tables:

     ```sql
     CREATE TABLE customers (
         customer_id INT PRIMARY KEY,
         name VARCHAR(100),
         total_spent DECIMAL(10, 2)
     );

     CREATE TABLE orders (
         order_id INT PRIMARY KEY,
         customer_id INT,
         amount DECIMAL(10, 2),
         status VARCHAR(50),
         FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
     );
     ```

   - Populate the tables with sample data or use your own dataset.

2. **Run Queries**
   - Execute the SQL scripts provided in this project to analyze customer and order data.

3. **Modify and Extend**
   - Feel free to modify the queries based on your needs and extend the analysis further.

---

## 📌 Technologies Used

- **SQL** (Structured Query Language)
- **RDBMS** (Compatible with MySQL, PostgreSQL, SQL Server, SQLite, etc.)

---

## 💡 Key Learnings

- Proficiency in **SQL joins (INNER, LEFT)** and **subqueries**.
- Using **aggregate functions (SUM, AVG, COUNT, MAX, MIN)** to extract insights.
- Implementing **HAVING and WHERE conditions** effectively.
- Filtering data using **EXISTS, ORDER BY, and GROUP BY**.

---

## 📄 README

### **Retail Sales Analysis - SQL Project**

This project provides a hands-on approach to analyzing retail sales data using SQL. It includes a variety of SQL queries that demonstrate how to extract, filter, and aggregate data from a relational database. The dataset consists of two tables: `customers` and `orders`, which store customer information and order details, respectively.

### **Getting Started**

1. **Prerequisites**
   - A relational database management system (RDBMS) such as MySQL, PostgreSQL, SQL Server, or SQLite.
   - Basic knowledge of SQL (Structured Query Language).

2. **Setting Up the Database**
   - Create a new database in your RDBMS.
   - Import the `customers` and `orders` tables into the database.

3. **Running the Queries**
   - Execute the SQL queries provided in the project to analyze the data. The queries are categorized into basic, filtering & aggregation, joins & subqueries, and advanced queries.

4. **Modifying and Extending**
   - Feel free to modify the queries to suit your specific needs. You can also extend the analysis by adding more tables or creating additional queries.

### **SQL Queries Overview**

- **Basic Queries**: Retrieve all customer and order data, count the total number of orders per customer.
- **Filtering & Aggregation**: Find customers who have placed at least one order over \$600, retrieve customers who have spent more than the average total spending across all customers, etc.
- **Joins & Subqueries**: Retrieve each customer's highest order amount, find customers who have placed more than the average number of orders across all customers, etc.
- **Advanced Queries**: Retrieve customers who have spent more than their own highest single order amount, find orders where the amount exceeds the total spending of at least one customer, etc.

### **Technologies Used**

- **SQL**: The primary language used for querying the database.
- **RDBMS**: Compatible with MySQL, PostgreSQL, SQL Server, SQLite, and other relational database systems.

### **Key Learnings**

- **SQL Joins**: Learn how to use INNER JOIN and LEFT JOIN to combine data from multiple tables.
- **Aggregate Functions**: Use SUM, AVG, COUNT, MAX, and MIN to perform calculations on data.
- **Filtering**: Implement WHERE and HAVING conditions to filter data based on specific criteria.
- **Subqueries**: Use subqueries to perform complex data analysis.
