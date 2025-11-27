IF DB_ID('project') IS NOT NULL
BEGIN
    ALTER DATABASE project SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE project;
END;

CREATE DATABASE project;

USE project;

SELECT *
FROM sales;

-- DATA TRANSFORMATION AND EDA
-- HOW MANY BRANCHES DO WE HAVE

SELECT DISTINCT StoreBranch
FROM sales

-- DROP STORE BRANCH COLUMN
ALTER TABLE sales
DROP COLUMN storebranch;

ALTER TABLE sales
DROP COLUMN City, country;

SELECT *
FROM sales;

EXEC sp_rename 'sales.productname', 'Product', 'COLUMN';
--
EXEC sp_rename 'sales.customername', 'Customer', 'COLUMN';
EXEC sp_rename 'sales.UnitPrice_NGN', 'Unit_price', 'COLUMN';
EXEC sp_rename 'sales.UnitCost_NGN', 'Unit_Cost', 'COLUMN';
EXEC sp_rename 'sales.TotalPrice_NGN', 'Revenue', 'COLUMN';
EXEC sp_rename 'sales.TotalCost_NGN', 'COGs', 'COLUMN';
EXEC sp_rename 'sales.Profit_NGN', 'Profit', 'COLUMN';

-- HOW MANY CUSTOMERS DO WE HAVE

-/* WE SHOULD HAVE USED THE DISTINCT NAME, BUT THERE IS NO UNIQUE ID FOR EACH CUSTOMERS, 
THEREFORE, TWO OR MORE CUSTOMERS MIGHT HAVE THE SAME NAME, SO I HAVE TO USE COUNT */

SELECT COUNT(Customer)
FROM sales; -- we have 5000 customers;



-- HOW MANY PRODUCTS ARE WE SELLING
WITH prd AS(
SELECT DISTINCT product
FROM sales
)
SELECT COUNT(*)
FROM prd; -- we are selling 15 products


--WHAT IS OUR REVENUE AND PROFIT BREAKDOWN  BY PRODUCT

SELECT product,
FORMAT(SUM(revenue), 'C', 'en-NG')  AS revenue,
FORMAT(SUM(profit), 'C', 'en-NG') AS profit
FROM sales
GROUP BY product
ORDER BY SUM(revenue) DESC;



-- WHICH DAY DRIVES MORE ORDERS

SELECT 
DATENAME(weekday, OrderDate) AS month,
COUNT(transactionid) AS Orders
FROM sales
GROUP BY DATENAME(weekday, OrderDate)
ORDER BY COUNT(transactionid) DESC;


-- WHICH PERIOD OF THE DAY DOES OUR CUSTOMERS PLACES ORDER MOST

WITH time AS(
SELECT OrderDate,
TransactionID AS trx,
CASE
WHEN DATEPART(hour, OrderDate) < 12 THEN 'Morning'
WHEN DATEPART(hour, OrderDate) < 16 THEN 'Afternoon'
WHEN DATEPART(hour, OrderDate) < 24 THEN 'Night'
END AS section
FROM sales
)
SELECT section,
COUNT(trx) 
FROM time
GROUP BY section
ORDER BY COUNT(trx) DESC;


-- WHICH PRODUCT CATEGORY IS DRIVING MORE PROFIT
SELECT category,
FORMAT(SUM(profit), 'C', 'en-NG') as profit
FROM sales
GROUP BY Category
ORDER BY SUM(profit) DESC;


-- WHAT IS THE AVERAGE PRICE OF EACH PRODUCTS AND WHATS THE MOST EXPENSIVE PRODUCT

SELECT
product,
AVG(unit_price)
FROM sales
GROUP BY product
ORDER BY AVG(unit_price) DESC;


--  WHO ARE OUR TOP 10 PERFORMING CUSTOMERS
SELECT TOP 10
customer,
FORMAT(SUM(revenue), 'C', 'en-NG') as revenue 
FROM sales
GROUP BY customer
ORDER BY SUM(revenue) DESC;

-- WHAT IS THE TOTAL PROFIT BY MONTH
SELECT
DATENAME(month, OrderDate) AS Month,
FORMAT(SUM(profit), 'C', 'en-NG') AS Profit
FROM sales
GROUP BY DATENAME(month, OrderDate)
ORDER BY SUM(profit) DESC;