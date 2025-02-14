-- Show the tables
SELECT * FROM customers
SELECT * FROM orders



-- Retrieve each customer's name and their total number of orders. 

-- INNER JOIN:
-- SELECT 
-- name,
-- COUNT(*) AS total_orders
-- FROM customers AS cu
-- INNER JOIN orders AS os
-- ON cu.customer_id = os.customer_id
-- GROUP BY cu.customer_id, name






-- Find customers who have placed at least one order with an amount greater 
-- than $600. 



-- SELECT
-- *
-- FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	SUM(os.amount) AS total_spendings
-- 	FROM customers AS cu
-- 	INNER JOIN orders AS os
-- 	ON cu.customer_id = os.customer_id
-- 	GROUP BY cu.customer_id, name
-- 	HAVING COUNT(*) >= 2
-- 	ORDER BY cu.customer_id ASC
-- ) AS orders_cu
-- WHERE orders_cu.total_spendings > 600




-- SELECT
-- * 
-- FROM customers AS CU
-- WHERE EXISTS (
-- 	SELECT *
-- 	FROM orders AS os
-- 	WHERE cu.customer_id = os.customer_id
-- 	AND os.amount > 600
-- )







-- Find the average order amount per customer and display only those 
-- customers with an average order value above $300. 


-- SELECT 
-- cu.customer_id,
-- AVG(amount) AS avg_amount_per_customer
-- FROM customers AS cu
-- INNER JOIN orders AS os
-- ON cu.customer_id = os.customer_id 
-- GROUP BY cu.customer_id
-- HAVING AVG(amount) > 300







-- Retrieve customers who have spent more than the average total spending 
-- across all customers. 



-- SELECT * 
-- FROM customers 
-- WHERE total_spent > (
-- 	SELECT AVG(total_spent) FROM customers
-- )





-- Retrieve each customer's name and their highest order amount. 




-- SELECT
-- cu.customer_id,
-- cu.name,
-- MAX(amount) AS highest_order_amount
-- FROM customers AS cu
-- INNER JOIN orders AS os
-- ON cu.customer_id = os.customer_id 
-- GROUP BY cu.customer_id,name
-- ORDER BY highest_order_amount DESC




-- Find customers who have never placed an order. 


-- SELECT *
-- FROM customers AS cu
-- LEFT JOIN orders AS os
-- ON cu.customer_id = os.customer_id
-- WHERE order_id IS NULL

-- Find the customer(s) who placed the highest order amount. 


-- SELECT 
-- name,
-- MAX(amount) AS max_amount
-- FROM customers AS cu
-- INNER JOIN orders AS os
-- ON cu.customer_id = os.customer_id
-- GROUP BY cu.customer_id, name
-- HAVING MAX(amount) = (
-- 	SELECT MAX(amount) FROM orders
-- )






-- Find customers who have placed more than the average number of orders 
-- across all customers. 



-- SELECT * FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	COUNT(order_id) AS total_orders
-- 	FROM customers AS cu
-- 	INNER JOIN orders AS os
-- 	ON cu.customer_id = os.customer_id 
-- 	GROUP BY cu.customer_id, name
-- ) AS orders_table_per_customer
-- WHERE total_orders > (
-- SELECT 
-- AVG(total_orders) AS avg_orders
-- FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	COUNT(order_id) AS total_orders
-- 	FROM customers AS cu
-- 	INNER JOIN orders AS os
-- 	ON cu.customer_id = os.customer_id 
-- 	GROUP BY cu.customer_id, name
-- )

-- 	)
	





-- Retrieve orders where the order amount is higher than the total spending 
-- of at least one customer. 


-- SELECT 
-- cu.customer_id,
-- name,
-- amount,
-- total_spent
-- FROM customers AS cu
-- INNER JOIN orders AS os
-- ON cu.customer_id = os.customer_id
-- WHERE amount > total_spent
















-- Find each customer's total spending from completed orders only and 
-- display only those who have spent more than $500. 


-- SELECT * FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	SUM(amount) AS total_spent
-- 	FROM customers AS cu 
-- 	INNER JOIN (
-- 		SELECT * FROM orders 
-- 		WHERE status = 'Completed'
-- 	) AS orders
-- 	ON cu.customer_id = orders.customer_id
-- 	GROUP BY cu.customer_id, name
-- ) AS orders
-- WHERE orders.total_spent > 500




-- Retrieve customers who have spent more than their own highest single 
-- order amount. 



-- SELECT 
-- orders_cu.customer_id,
-- orders_cu.name,
-- orders_cu.max_amount,
-- total_spent
-- FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	MAX(amount) AS max_amount
-- 	FROM customers AS cu
-- 	INNER JOIN orders AS os
-- 	ON cu.customer_id = os.customer_id
-- 	GROUP BY cu.customer_id, name
-- ) AS orders_cu
-- INNER JOIN customers AS os
-- ON os.customer_id = orders_cu.customer_id
-- WHERE total_spent > orders_cu.max_amount






-- Find orders where the order amount is greater than the average order 
-- amount for that specific customer.


-- SELECT 
-- orders_amount.customer_id,
-- orders_amount.name,
-- orders_amount.avg_amount,
-- os.amount
-- FROM (
-- 	SELECT 
-- 	cu.customer_id,
-- 	name,
-- 	AVG(amount) AS avg_amount
-- 	FROM customers AS cu 
-- 	INNER JOIN orders AS os
-- 	ON cu.customer_id = os.customer_id
-- 	GROUP BY cu.customer_id, name
-- ) AS orders_amount
-- INNER JOIN orders AS os
-- ON orders_amount.customer_id = os.customer_id
-- WHERE os.amount > orders_amount.avg_amount

