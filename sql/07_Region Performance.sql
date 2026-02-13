# REGION PERFORMANCE

SELECT
    Region,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS profit
FROM retail_sales_data
GROUP BY Region
ORDER BY Revenue DESC;