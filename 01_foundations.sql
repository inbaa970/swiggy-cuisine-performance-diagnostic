-- 01_foundations.sql
-- Basic SQL queries for Swiggy_Capstone


-- 1. SELECT + WHERE
-- Find restaurants in a specific city
SELECT *
FROM restaurants
WHERE city = 'Mumbai';


-- 2. DISTINCT
-- List all unique cuisines
SELECT DISTINCT cuisine
FROM restaurants;


-- 3. ORDER BY + LIMIT
-- Find top 5 highest value orders
SELECT order_id, amount_inr
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;


-- 4. LIKE with %
-- Find restaurants whose name contains Pizzeria
SELECT name, city
FROM restaurants
WHERE name LIKE '%Pizzeria%';


-- 5. IN
-- Find customers from Mumbai and Bengaluru
SELECT customer_id, name, city
FROM customers
WHERE city IN ('Mumbai', 'Bengaluru');


-- 6. BETWEEN
-- Find orders with amount between 500 and 1000
SELECT *
FROM orders
WHERE amount_inr BETWEEN 500 AND 1000;


-- 7. NOT BETWEEN
-- Find orders outside 500 to 1000 range
SELECT *
FROM orders
WHERE amount_inr NOT BETWEEN 500 AND 1000;


-- 8. IS NULL
-- Find orders where rating is not available
SELECT order_id, status
FROM orders
WHERE rating IS NULL;