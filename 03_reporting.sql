


-- 1. Restaurant performance tier based on Delivered revenue

SELECT
    r.name,
    SUM(CASE WHEN o.status = 'Delivered' THEN o.amount_inr ELSE 0 END) AS total_revenue,
    CASE
        WHEN SUM(CASE WHEN o.status = 'Delivered' THEN o.amount_inr ELSE 0 END) >= 50000 THEN 'High'
        WHEN SUM(CASE WHEN o.status = 'Delivered' THEN o.amount_inr ELSE 0 END) >= 20000 THEN 'Medium'
        ELSE 'Low'
    END AS performance_tier
FROM restaurants r
LEFT JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY r.restaurant_id, r.name
ORDER BY total_revenue DESC;


-- 2. Monthly cuisine business report (Delivered orders only)

SELECT
    r.cuisine,
    strftime('%Y-%m', o.order_date) AS month,
    COUNT(*) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM orders o
INNER JOIN restaurants r
ON o.restaurant_id = r.restaurant_id
WHERE o.status = 'Delivered'
GROUP BY r.cuisine, month
ORDER BY r.cuisine, month;

-- 3. Cuisine target comparison

SELECT
    x.cuisine,
    x.total_revenue,
    ct.target_revenue_inr,
    (ct.target_revenue_inr - x.total_revenue) AS variance,
    ((x.total_revenue - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr AS percentage_variance,
    CASE
        WHEN x.total_revenue >= ct.target_revenue_inr THEN 'Above Target'
        WHEN ((ct.target_revenue_inr - x.total_revenue) * 100.0) / ct.target_revenue_inr <= 15 THEN 'Below Target - Watch'
        ELSE 'Below Target - Critical'
    END AS target_status
FROM
(
    SELECT
        r.cuisine,
        SUM(o.amount_inr) AS total_revenue
    FROM orders o
    INNER JOIN restaurants r
    ON o.restaurant_id = r.restaurant_id
    WHERE o.status = 'Delivered'
    GROUP BY r.cuisine
) x
INNER JOIN cuisine_targets ct
ON x.cuisine = ct.cuisine
ORDER BY x.total_revenue DESC;


