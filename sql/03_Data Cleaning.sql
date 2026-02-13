# 3. DATA CLEANING

select * from retail_sales_data;

set sql_safe_updates=0;

UPDATE retail_sales_data   # null value nhi tha islye
SET Profit = "NULL"
WHERE Profit = 5440;



# 3.1 Check NULL Values :- 

SELECT *
FROM retail_sales_data
WHERE Order_ID IS NULL
   OR Order_Date IS NULL
   OR Product IS NULL
   OR Revenue IS NULL
   OR Profit IS NULL;           # I validated missing values before analysis.


# 3.2 Handle NULL Values :- 

UPDATE retail_sales_data
SET Profit = 0
WHERE Profit IS NULL;


# 3.3 Check Duplicates :-

SELECT Order_ID, COUNT(*)
FROM retail_sales_data
GROUP BY Order_ID
HAVING COUNT(*) > 1;

# Delete duplicates :-
DELETE s1    # not run confusing 
FROM sales s1
JOIN sales s2
ON s1.order_id = s2.order_id
AND s1.rowid > s2.rowid;


# 3.4 Invalid Data Check :-

SELECT *
FROM retail_sales_data
WHERE Quantity <= 0
   OR Price <= 0;

# Fix / delete :-   
DELETE FROM retail_sales_data
WHERE quantity <= 0;
   
