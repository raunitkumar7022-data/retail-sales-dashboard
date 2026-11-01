-- Retail Sales Performance Dashboard: PostgreSQL queries

CREATE TABLE superstore (
  row_id INT,
  order_id TEXT,
  order_date DATE,
  ship_date DATE,
  ship_mode TEXT,
  customer_id TEXT,
  customer_name TEXT,
  segment TEXT,
  country TEXT,
  city TEXT,
  state TEXT,
  postal_code INT,
  region TEXT,
  product_id TEXT,
  category TEXT,
  sub_category TEXT,
  product_name TEXT,
  sales NUMERIC
);

-- Check the row count after loading the cleaned CSV (expected: 9800)
SELECT COUNT(*) FROM superstore;

-- 1. Total sales, orders, and customers
SELECT SUM(sales) AS total_sales,
       COUNT(DISTINCT order_id) AS total_orders,
       COUNT(DISTINCT customer_id) AS total_customers
FROM superstore;

-- 2. Top 10 products by sales
SELECT product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- 3. Monthly sales
SELECT DATE_TRUNC('month', order_date) AS month, SUM(sales) AS total_sales
FROM superstore
GROUP BY 1
ORDER BY 1;

-- 4. Sales by category and region
SELECT category, region, SUM(sales) AS total_sales
FROM superstore
GROUP BY category, region
ORDER BY total_sales DESC;
