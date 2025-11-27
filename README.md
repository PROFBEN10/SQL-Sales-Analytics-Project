# SQL-Sales-Analytics-Project
End–to–End Data Cleaning, Transformation, and Exploratory Data Analysis (EDA) Using SQL Server
SQL Sales Analytics Project

End–to–End Data Cleaning, Transformation, and Exploratory Data Analysis (EDA) Using SQL Server

# Executive Summary

This project delivers a full SQL-driven analysis of a retail supermarket’s 5,000-transaction dataset from Osogbo, Nigeria.

Every step — data import, cleaning, transformation, EDA, KPI computation, and insight generation — was completed 100% in SQL Server (SSMS).

The project demonstrates practical SQL skills used in real analytics workflows, and business intelligence strengths through insights that support decision-making in pricing, marketing, inventory, and customer management.

# Business Problem

Retail leadership seeks answers to core questions:

Which products and categories generate the most revenue and profit?

Who are the top customers?

What days and times do customers shop most?

How profitable is each month?

Are there hidden trends that can improve sales strategy?

This project uses SQL to uncover these patterns and convert them into recommendations.


# Tools & Technologies

Microsoft SQL Server (SSMS)

T-SQL

CSV Import Wizard

Analytical reasoning & business intelligence

# Data Cleaning & Transformation

To ensure accurate analysis, I applied structured cleaning steps:

### Dropped unnecessary columns

StoreBranch

City

Country

### Renamed inconsistent fields
Original Column	New Column
ProductName	Product
CustomerName	Customer
UnitPrice_NGN	Unit_Price
UnitCost_NGN	Unit_Cost
TotalPrice_NGN	Revenue
TotalCost_NGN	COGs
Profit_NGN	Profit

### Ensured numeric formatting & date conversions

Converted currency columns to numeric

Converted OrderDate to datetime

Created derived features (weekday, section of day, month name)

# Exploratory Data Analysis 

### Store Branches

The dataset originally contained one branch:

['Osogbo Supermarket']

### Customer Count

Total customers (not unique individuals):

5,000

### Number of Products Sold

Distinct products:

15 products

### Product Revenue & Profit (Top 10 Products)

Product	Revenue	Profit
Bottled Water 75cl	₦390,000	₦171,000
Coca-Cola 330ml (Can)	₦378,000	₦162,000
Sausage Roll	₦357,750	₦99,250
Bread (500g)	₦330,000	₦140,000
Milk 1L	₦315,000	₦180,000
Cereal (500g)	₦312,500	₦137,500
Biscuit (200g)	₦300,650	₦102,550
Toilet Roll (Pack of 4)	₦293,000	₦143,000
Rice 5kg	₦275,000	₦75,000
Noodles (Pack of 5)	₦270,000	₦90,000

Insight: Drinks and basic household essentials dominate revenue.
Recommendation: Increase stock and promo visibility for the highest-moving SKUs.

### Orders by Day of the Week

Day	Orders
Saturday	782
Sunday	742
Friday	741
Thursday	718
Wednesday	673
Tuesday	672
Monday	672

Insight: Weekend traffic is significantly higher.
Recommendation: Run weekend promotions & ensure full staffing on Sat/Sun.

### Order Distribution by Time of Day

Time Segment	Orders
Afternoon	2,170
Morning	1,525
Night	1,305

Insight: Afternoons dominate customer activity.
Recommendation: Schedule digital promotions for early afternoon peaks.

### Profit by Category

Category	Profit
Drinks	₦333,000
Bakery	₦224,250
Household	₦186,500
Food	₦172,500
Snacks	₦102,550

Insight: Drinks and Bakery items drive the highest margin contribution.
Recommendation: Position these categories at store hotspots and optimize pricing.

### Average Price Per Product (Most Expensive at Top)

Product	Avg Unit Price
Rice 5kg	₦5,500
Milk 1L	₦1,050
Cereal (500g)	₦1,250
Bread (500g)	₦900
Toilet Roll (Pack of 4)	₦850

Insight: Rice 5kg contributes heavily to per-transaction value.
Recommendation: Offer bundles or periodic discounts to increase cart size.

### Top 10 Customers by Revenue

Customer	Revenue
Joy Adewale	₦11,750
John Okoro	₦11,350
Tunde Akande	₦11,200
Samuel Ayo	₦10,950
Chioma Daniels	₦10,750
Ibrahim Musa	₦10,450
Fatima Yusuf	₦10,200
Blessing Oladipo	₦10,050
Kemi Adeoye	₦10,000
Adewale Tolu	₦9,950

Insight: The top 10 customers contribute a significant revenue portion.
Recommendation: Introduce a loyalty program to increase retention.

### Total Profit by Month

Month	Profit
August	₦210,000
April	₦208,000
March	₦207,000
July	₦205,000
February	₦203,000
June	₦200,000
January	₦197,000
May	₦190,000

Insight: Sales maintain strong performance year-round with slight summer peaks.
Recommendation: Target promotions around April–August for maximum ROI.

### Business Recommendations

Focus stocking on high-revenue, high-profit products (Water, Coca-Cola, Cereal).
Run weekend promotions as Saturday & Sunday show peak orders.
Intensify afternoon promotions when customer traffic is highest.
Expand loyalty programs targeting top-spending customers.
Increase visibility & pricing optimization for Drinks and Bakery categories.
