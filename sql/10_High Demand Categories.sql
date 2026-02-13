# High Demand Categories

SELECT Category,
       SUM(Quantity) AS Demand
FROM retail_sales_data
GROUP BY Category
ORDER BY Demand DESC;