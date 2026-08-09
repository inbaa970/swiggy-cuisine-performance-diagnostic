-- 02_aggregation_joins.sql
-- Aggregation and Join queries for Swiggy Capstone


-- 1. INNER JOIN + GROUP BY + HAVING
-- Cuisine wise delivered order performance

SELECT 
    r.cuisine,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders o
INNER JOIN restaurants r
ON o.restaurant_id = r.restaurant_id
WHERE o.status = 'Delivered'
GROUP BY r.cuisine
HAVING total_revenue > 40000;


-- 2. LEFT JOIN
-- Count all orders per restaurant including restaurants with zero orders

SELECT 
    r.restaurant_id,
    r.name,
    COUNT(o.order_id) AS total_orders
FROM restaurants r
LEFT JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.name
ORDER BY total_orders ASC;