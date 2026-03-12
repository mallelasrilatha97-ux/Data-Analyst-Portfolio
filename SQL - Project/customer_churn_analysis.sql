SQL Queries Used 

Total Customers :
SELECT COUNT(*) AS total_customers
FROM customers;

Total Churned Customers :
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE churn = 'Yes';

Churn Rate:
SELECT 
COUNT(CASE WHEN churn = 'Yes' THEN 1 END) * 1.0 / COUNT(*) AS churn_rate
FROM customers;

Customers by Contract Type:

SELECT contract_type, COUNT(*) AS total_customers
FROM customers
GROUP BY contract_type;

Average Monthly Charges:
SELECT AVG(monthly_charges) AS avg_monthly_charges
FROM customers;

Churn by Region:
SELECT region,
COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS churned_customers
FROM customers
GROUP BY region
ORDER BY churned_customers DESC;

Customer Retention:

SELECT 
COUNT(CASE WHEN churn = 'No' THEN 1 END) AS retained_customers
FROM customers;









