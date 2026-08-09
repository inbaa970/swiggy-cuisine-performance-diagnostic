-- Verification of table row counts
-- Expected:
-- restaurants = 15
-- customers = 50
-- orders = 420
-- cuisine_targets = 6

SELECT COUNT(*) AS restaurant_count FROM restaurants;

SELECT COUNT(*) AS customer_count FROM customers;

SELECT COUNT(*) AS order_count FROM orders;

SELECT COUNT(*) AS cuisine_target_count FROM cuisine_targets;


-- Check order status distribution

SELECT status, COUNT(*) AS total_orders
FROM orders
GROUP BY status;