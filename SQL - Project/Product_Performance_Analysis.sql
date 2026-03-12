# Project Title
Netflix Data Analysis Using SQL

# Project Description
Performed exploratory data analysis on Netflix content data using SQL to identify content distribution, 
popular genres, release trends, and country-wise availability. 
The analysis helps understand how streaming platforms distribute content and what types of shows are most common.

# Dataset contains
- Show ID
- Title
- Type (Movie / TV Show)
- Director
- Country
- Release Year
- Rating
- Genre

# Project Focus
The project focuses on identifying content trends, most popular genres, number of movies vs TV shows,
and content distribution by country and year.


SQL Queries

Top Profitable Products:
SELECT product_name, SUM(profit) AS total_profit
FROM products
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

Sales by Category:
SELECT category, SUM(sales) AS total_sales
FROM products
GROUP BY category
ORDER BY total_sales DESC;

Profit by Region:
SELECT region, SUM(profit) AS total_profit
FROM products
GROUP BY region
ORDER BY total_profit DESC;

Average Product Profit:
SELECT AVG(profit) AS avg_profit
FROM products;

Loss Making Products:
SELECT product_name, profit
FROM products
WHERE profit < 0;








