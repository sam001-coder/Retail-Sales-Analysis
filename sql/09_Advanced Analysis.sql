# ADVANCED ANALYSIS


# Profit Margin

SELECT
    Product,
    ROUND((SUM(Profit)/SUM(Revenue))*100,2) AS Profit_margin
FROM retail_sales_data
GROUP BY Product
ORDER BY Profit_margin DESC;


# High Value Orders

SELECT *,
CASE
    WHEN Revenue > 5000 THEN 'High'
    WHEN Revenue BETWEEN 2000 AND 5000 THEN 'Medium'
    ELSE 'Low'
END AS order_type
FROM retail_sales_data;


# Product Ranking (Window Function)

SELECT
    Product,
    Category,
    SUM(Revenue) AS revenue,
    RANK() OVER (PARTITION BY Category ORDER BY SUM(Revenue) DESC) AS rank_in_category
FROM retail_sales_data
GROUP BY Product, Category;

