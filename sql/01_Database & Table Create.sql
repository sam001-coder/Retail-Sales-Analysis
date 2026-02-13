# 1️. Database & Table Create

CREATE DATABASE Retail_Sales_Analysis;

USE Retail_Sales_Analysis;

CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    product VARCHAR(100),
    category VARCHAR(50),
    region VARCHAR(20),
    quantity INT,
    price DECIMAL(10,2),
    revenue DECIMAL(12,2),
    profit DECIMAL(12,2)
);

show tables;
