# CATEGORY ANALYSIS

SELECT
    Category,
    SUM(Revenue) AS Revenue,
    SUM(Profit) AS Profit
FROM retail_sales_data
GROUP BY Category
ORDER BY Revenue DESC;


# Insight example :
# Electronics category generates highest revenue.