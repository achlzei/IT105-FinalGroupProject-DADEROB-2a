-- BI QUERIES

-- Total Revenue
SELECT 
    SUM(total_amount) AS total_revenue
FROM fact_sales;

-- Monthly Revenue
SELECT 
    d.year,
    d.month,
    SUM(f.total_amount) AS monthly_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month
ORDER BY d.year, d.month;

-- Top Customers by Spending
SELECT 
    c.name,
    SUM(f.total_amount) AS total_spent
FROM fact_sales f
JOIN dim_customer c ON f.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Best-Selling Products
SELECT 
    p.name,
    SUM(f.quantity) AS total_units_sold
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY total_units_sold DESC;

-- Measures typical customer spending
SELECT 
    AVG(total_amount) AS avg_order_value
FROM fact_sales;


-- Shows which product categories perform best
SELECT 
    p.category_name,
    SUM(f.total_amount) AS category_revenue
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.category_name
ORDER BY category_revenue DESC;

-- Daily Sales Performance
SELECT 
    d.full_date,
    SUM(f.total_amount) AS daily_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.full_date
ORDER BY d.full_date;
