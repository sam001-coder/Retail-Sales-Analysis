# MONTHLY SALES TREND

SELECT
    YEAR(Order_Date) AS year,
    MONTH(Order_Date) AS month,
    SUM(Revenue) AS monthly_sales
FROM retail_sales_data
GROUP BY year, month
ORDER BY year, month;