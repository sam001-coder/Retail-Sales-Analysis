# Total Revenue & Profit :- 

SELECT
    SUM(Revenue) AS total_revenue,
    SUM(Profit) AS total_profit
FROM retail_sales_data;


# Total Orders :-

SELECT COUNT(*) AS total_orders
FROM retail_sales_data;