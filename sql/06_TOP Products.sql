# TOP PRODUCTS

SELECT
    Product,
    SUM(Revenue) AS Revenue
FROM retail_sales_data
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 10;