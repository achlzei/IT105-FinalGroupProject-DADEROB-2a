-- =========================================
-- ORIGINAL QUERIES/BEFORE EXPLAIN
-- =========================================

-- Total Revenue
SELECT 
    SUM(amount) AS total_revenue
FROM Payments;

-- Monthly Revenue
SELECT 
    YEAR(payment_date) AS year,
    MONTH(payment_date) AS month,
    SUM(amount) AS monthly_revenue
FROM Payments
GROUP BY YEAR(payment_date), MONTH(payment_date)
ORDER BY year, month;

-- Top Customers by Spending
SELECT 
    c.name,
    SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
JOIN Payments p 
    ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Best-Selling Products
SELECT 
    pr.name,
    SUM(od.quantity) AS total_units_sold
FROM Products pr
JOIN OrderDetails od 
    ON pr.product_id = od.product_id
GROUP BY pr.product_id, pr.name
ORDER BY total_units_sold DESC;

-- Measures Typical Customer Spending
SELECT 
    AVG(amount) AS avg_order_value
FROM Payments;

-- Revenue by Product Category
SELECT 
    c.category_name,
    SUM(od.quantity * od.price) AS category_revenue
FROM Categories c
JOIN Products p 
    ON c.category_id = p.category_id
JOIN OrderDetails od 
    ON p.product_id = od.product_id
GROUP BY c.category_name
ORDER BY category_revenue DESC;

-- Daily Sales Performance
SELECT 
    DATE(payment_date) AS sales_date,
    SUM(amount) AS daily_revenue
FROM Payments
GROUP BY DATE(payment_date)
ORDER BY sales_date;


-- =========================================
--  OPTIMIZED QUERIES/AFTER EXPLAIN
-- =========================================

-- Total Revenue
EXPLAIN
SELECT 
    SUM(amount) AS total_revenue
FROM Payments;

-- Monthly Revenue
EXPLAIN
SELECT 
    YEAR(payment_date) AS year,
    MONTH(payment_date) AS month,
    SUM(amount) AS monthly_revenue
FROM Payments
GROUP BY YEAR(payment_date), MONTH(payment_date)
ORDER BY year, month;

-- Top Customers by Spending
EXPLAIN
SELECT 
    c.name,
    SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
JOIN Payments p 
    ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Best-Selling Products
EXPLAIN
SELECT 
    pr.name,
    SUM(od.quantity) AS total_units_sold
FROM Products pr
JOIN OrderDetails od 
    ON pr.product_id = od.product_id
GROUP BY pr.product_id, pr.name
ORDER BY total_units_sold DESC;

-- Measures Typical Customer Spending
EXPLAIN
SELECT 
    AVG(amount) AS avg_order_value
FROM Payments;

-- Revenue by Product Category
EXPLAIN
SELECT 
    c.category_name,
    SUM(od.quantity * od.price) AS category_revenue
FROM Categories c
JOIN Products p 
    ON c.category_id = p.category_id
JOIN OrderDetails od 
    ON p.product_id = od.product_id
GROUP BY c.category_name
ORDER BY category_revenue DESC;

-- Daily Sales Performance
EXPLAIN
SELECT 
    DATE(payment_date) AS sales_date,
    SUM(amount) AS daily_revenue
FROM Payments
GROUP BY DATE(payment_date)
ORDER BY sales_date;


-- =========================================
-- OPTIMIZATION: CREATE INDEXES
-- =========================================

-- Orders Table
CREATE INDEX idx_orders_customer
ON Orders(customer_id);

-- OrderDetails Table
CREATE INDEX idx_orderdetails_product
ON OrderDetails(product_id);

-- Payments Table
CREATE INDEX idx_payments_order
ON Payments(order_id);

CREATE INDEX idx_payments_date
ON Payments(payment_date);

-- Products Table
CREATE INDEX idx_products_category
ON Products(category_id);
