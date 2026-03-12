# Project Title
E-commerce Sales Analysis Using SQL

# Project Description
Analyzed e-commerce transaction data to identify sales trends, customer purchasing behavior, top-performing products,
and regional sales performance using SQL queries. The analysis helps businesses understand revenue patterns and 
optimize product strategy to improve overall sales performance.

# Dataset contains
- Order ID
- Customer ID
- Product Name
- Category
- Sales Amount
- Order Date
- Region
- Quantity

# Project Focus
The project focuses on identifying top-selling products, revenue trends, regional sales performance,
  and average order value to support data-driven business decisions.

SQL Queries
  
Total Sales:
SELECT SUM(sales) AS total_sales
FROM orders;

Top 5 Selling Products:

SELECT product_name, SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

Sales by Region:
  
SELECT region, SUM(sales) AS regional_sales
FROM orders
GROUP BY region
ORDER BY regional_sales DESC;


Average Order Value:
SELECT AVG(sales) AS avg_order_value
FROM orders;

Monthly Sales Trend:

SELECT MONTH(order_date) AS month,
SUM(sales) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;


















  
