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

Product	          Revenue	      Profit

Lays Chips 145g  	₦296,800.00	  ₦93,863.00

Meat Pie	        ₦256,500.00	  ₦122,607.00

Sugar (1 kg)	    ₦225,000.00	  ₦84,000.00

Eggs (6 pcs)	    ₦221,500.00	  ₦108,978.00

Milk (Peak 400g sachet)	₦182,000.00	  ₦81,172.00

Biscuit (200g)	  ₦135,450.00	  ₦46,053.00

Fanta 330ml (Can)	₦131,920.00	  ₦65,184.00

Tomato (1kg)	    ₦131,400.00	  ₦64,824.00

Sausage Roll	    ₦120,600.00	  ₦33,500.00

Coca-Cola 330ml (Can)	₦115,560.00	  ₦49,755.00

Bottled Water 75cl	  ₦102,750.00	    ₦45,895.00

Biscuits (assorted small pack)	₦77,580.00	₦26,291.00

Bread - Small Loaf	₦71,000.00	₦23,572.00

Indomie Noodles (1 pack)	₦29,800.00	₦11,771.00

Yoghurt (125g)	  ₦29,250.00	  ₦13,221.00

Insight: Drinks and basic household essentials dominate revenue.
Recommendation: Increase stock and promo visibility for the highest-moving SKUs.

### Orders by Day of the Week

Day	    Orders

Thursday	782

Monday	764

Friday	710

Tuesday	710

Wednesday	708

Sunday	675

Saturday	651

Insight: Weekend traffic is significantly higher.
Recommendation: Run weekend promotions & ensure full staffing on Sat/Sun.

### Order Distribution by Time of Day

Time Segment	Orders

Night        	2119

Afternoon    	1620

Morning	      1261

Insight: Afternoons dominate customer activity.
Recommendation: Schedule digital promotions for early afternoon peaks.

### Profit by Category

Category	Profit
Dairy	    ₦203,371.00

Bakery	  ₦179,679.00

Snacks	  ₦166,207.00

Drinks	  ₦160,834.00

Groceries	 ₦95,771.00

Produce	  ₦64,824.00

Insight: Drinks and Bakery items drive the highest margin contribution.
Recommendation: Position these categories at store hotspots and optimize pricing.

### Average Price Per Product (Most Expensive at Top)

Product	Avg     Unit Price

Tomato (1kg)	    900

Sugar (1 kg)	    900

Lays Chips 145g	  800

Milk (Peak 400g sachet)	500

Meat Pie	        500

Eggs (6 pcs)	    500

Sausage Roll	    450

Coca-Cola 330ml (Can)	360

Biscuit (200g)	  350

Fanta 330ml (Can)	340

Bread - Small Loaf	250

Yoghurt (125g)	  250

Indomie Noodles (1 pack)	200

Biscuits (assorted small pack)	180

Bottled Water 75cl	150

Insight: Rice 5kg contributes heavily to per-transaction value.
Recommendation: Offer bundles or periodic discounts to increase cart size.

### Top 10 Customers by Revenue

Customer	        Revenue
Ibrahim Okafor	  ₦15,710.00

Chinelo Olawale	  ₦15,580.00

Ngozi Balogun	    ₦15,330.00

Yetunde Bello	    ₦15,260.00

Tunde Sambo	      ₦15,230.00

Mohammed Olatunde	₦14,760.00

Amaka Afolabi	    ₦14,570.00

Opeyemi Idowu	    ₦14,380.00

Sola Afolabi	    ₦14,350.00

Susan Olaoye	    ₦14,320.00

Insight: The top 10 customers contribute a significant revenue portion.
Recommendation: Introduce a loyalty program to increase retention.

### Total Profit by Month

Month	    Profit

October  	₦92,070.00

July	    ₦89,186.00

August	  ₦88,331.00

March	    ₦87,075.00

September	₦85,973.00

May	      ₦85,884.00

June	    ₦80,448.00

February	₦79,122.00

January	  ₦78,828.00

April	    ₦74,564.00

November	₦29,205.00

Insight: Sales maintain strong performance year-round with slight summer peaks.
Recommendation: Target promotions around April–August for maximum ROI.

### Business Recommendations

Focus stocking on high-revenue, high-profit products (Water, Coca-Cola, Cereal).

Run weekend promotions as Saturday & Sunday show peak orders.

Intensify afternoon promotions when customer traffic is highest.

Expand loyalty programs targeting top-spending customers.

Increase visibility & pricing optimization for Drinks and Bakery categories.
