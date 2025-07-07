# Zepto-SQL

🛒 Zepto SQL Data Analysis
This project focuses on data cleaning, transformation, and analysis of product-level inventory data for Zepto, a hyperlocal delivery service. Using structured SQL queries, the script provides insights into inventory, pricing, revenue estimates, and product categorization.

📁 File Overview
Zepto_SQL.sql
SQL script containing all queries for data exploration, cleaning, transformation, and business insights.

🔍 Key Analysis Steps
✅ Data Cleaning

Removed rows with missing or zero MRP or selling prices

Renamed incorrectly formatted columns

Handled null values

📊 Exploratory Queries

Distinct product categories

In-stock vs. out-of-stock analysis

Products grouped by weight class (Low, Medium, Bulk)

💰 Revenue and Pricing Insights

Converted price units from paise to rupees

Identified top 10 products by discount percentage

Estimated revenue by category

Analyzed discount trends by product and category

📦 Inventory Weight Distribution

Calculated total inventory weight per category

Grouped products based on weight to understand distribution logistics

