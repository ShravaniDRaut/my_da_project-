# 🚕 Uber Data Analytics Project

An end-to-end data analytics project focused on analyzing Uber/NYC taxi trip data to identify patterns in demand, revenue, trip behavior, route performance, customer activity, and business opportunities.

The project uses **Python, SQL, Excel/CSV data, and Power BI** to transform raw trip-level data into meaningful business insights and recommendations.

---

## 📌 Project Overview

The objective of this project is to analyze Uber-style trip data and answer important business questions such as:

- When is trip demand the highest?
- Which days and hours generate the most trips?
- How does revenue change over time?
- Which payment methods contribute the most revenue?
- What is the average fare and trip distance?
- How does passenger count affect trip behavior?
- Which vendors perform better?
- Which routes and locations show higher demand?
- What business strategies can improve operations and revenue?

The project follows a complete analytics workflow:

**Raw Data → Data Cleaning → Data Transformation → SQL Analysis → Power BI Dashboard → Business Insights → Recommendations**

---

# 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| **Python** | Data cleaning and preprocessing |
| **Pandas** | Data manipulation and transformation |
| **SQL / MySQL** | Data querying and business analysis |
| **Power BI** | Interactive dashboards and visualization |
| **CSV** | Dataset storage |
| **Git & GitHub** | Version control and project documentation |

---

# 📂 Project Structure

The repository contains the following files:

```text
my_da_project/
│
├── Home.png
├── README.md
│
├── Uber Dashboard.pbix
│
├── cleaning.py
│
├── nyc_taxi_sample_5000.csv
├── uber_cleaned.csv
│
├── uber_queries.sql
│
├── overview.png
├── demand analysis.png
├── Route analysis.png
├── Revenue Dashboard.png
├── customer analysis.png
└── final summary.png

📊 Dataset

The project uses a sample NYC taxi/Uber-style trip dataset containing trip-level information such as:

Pickup datetime
Dropoff datetime
Pickup location
Dropoff location
Trip distance
Fare amount
Payment type
Passenger count
Vendor information
Dataset Files
nyc_taxi_sample_5000.csv — Raw/sample dataset
uber_cleaned.csv — Cleaned dataset

🔄 Project Workflow
Raw Dataset
     ↓
Data Exploration
     ↓
Data Cleaning using Python
     ↓
Missing Value & Duplicate Check
     ↓
Date/Time Transformation
     ↓
Feature Engineering
     ↓
Cleaned Dataset
     ↓
SQL Business Analysis
     ↓
Power BI Data Modeling
     ↓
Dashboard Development
     ↓
Business Insights
     ↓
Final Recommendations

🧹 1. Data Cleaning & Preprocessing

Python was used to prepare the raw dataset for analysis.

The cleaning process includes:

Loading the raw CSV dataset
Understanding dataset structure
Checking data types
Checking missing values
Checking duplicate records
Removing duplicate records
Converting date/time columns
Creating useful analytical features
Preparing the cleaned dataset for SQL and Power BI
Python Script

View cleaning.py

🗄️ 2. SQL Analysis

SQL was used to answer business-related questions from the cleaned dataset.

The analysis includes areas such as:

Total trips
Total revenue
Average fare
Average trip distance
Trips by hour
Trips by weekday
Revenue by payment type
Vendor performance
Passenger analysis
Demand analysis
Revenue trends
Route-level analysis
SQL Queries

View uber_queries.sql

📈 3. Power BI Dashboard

Power BI was used to create an interactive multi-page analytical dashboard.

The dashboard contains:

Overview
Demand Analysis
Route Analysis
Revenue Analysis
Customer & Trip Analysis
Final Business Recommendation
Power BI File

Download / View Uber Dashboard.pbix

Note: GitHub cannot display Power BI .pbix files directly in the browser. The file can be downloaded and opened using Power BI Desktop.

📊 Dashboard Screenshots
🏠 Home

1️⃣ Executive Overview

The Overview page provides a high-level summary of the business performance.

Key metrics include:

Total Trips
Total Revenue
Peak Hour
Average Distance
Average Fare
Average Trip Distance
Average Tip Percentage
Overview Dashboard

2️⃣ Demand Analysis

The Demand Analysis page focuses on understanding when and where trip demand is highest.

Key analysis includes:

Trips by hour
Trips by weekday
Peak demand periods
Demand patterns
Vendor demand
Passenger activity
Demand Analysis Dashboard

3️⃣ Route Analysis

The Route Analysis page focuses on trip routes and location-level behavior.

The analysis helps identify:

Popular pickup locations
Popular drop-off locations
High-volume routes
Trip distance patterns
Route-level demand
Route Analysis Dashboard

4️⃣ Revenue Analysis

The Revenue Dashboard focuses on understanding revenue generation.

Key analysis includes:

Revenue trends
Revenue by payment type
Revenue by vendor
Average fare
Revenue contribution
High-revenue periods
Revenue Dashboard

5️⃣ Customer & Trip Analysis

This page focuses on passenger and trip behavior.

The analysis includes:

Passenger count
Average fare by passenger count
Trip distance
Customer/trip patterns
Payment behavior
Trip volume
Customer Analysis Dashboard

💡 6. Final Business Recommendations

The final dashboard converts the analytical findings into actionable business recommendations.

Examples of recommendations include:

📌 Demand Management

Increase driver availability during high-demand hours and days to reduce potential wait times and improve service availability.

📌 Revenue Optimization

Focus operational resources on high-revenue periods and monitor revenue trends to identify opportunities for improvement.

📌 Payment Strategy

Monitor payment-type usage and revenue contribution to understand customer payment preferences.

📌 Route Optimization

Identify high-demand routes and locations to improve driver allocation and operational efficiency.

📌 Customer Experience

Use trip and passenger behavior analysis to understand customer patterns and improve service planning.

Final Business Summary

📌 Key Business KPIs

The dashboard tracks important KPIs such as:

Total Trips
Total Revenue
Average Fare
Average Trip Distance
Peak Hour
Average Tip Percentage
Trips by Hour
Trips by Weekday
Revenue by Payment Type
Vendor Performance

🔍 Key Insights

The analysis helps identify patterns such as:

Demand varies significantly by hour and weekday.
Peak periods require better driver availability.
Payment methods have different contributions to overall revenue.
Trip distance and fare are important factors in revenue analysis.
Vendor performance can be compared using trip volume and revenue metrics.
Passenger behavior provides additional insights into trip characteristics.
Location and route analysis can support better driver allocation.

📁 Files & Resources
File	Description
Home.png	Dashboard home page
overview.png	Executive overview dashboard
demand analysis.png	Demand analysis dashboard
Route analysis.png	Route analysis dashboard
Revenue Dashboard.png	Revenue dashboard
customer analysis.png	Customer and trip analysis
final summary.png	Final recommendations
Uber Dashboard.pbix	Power BI dashboard file
cleaning.py	Python data-cleaning script
nyc_taxi_sample_5000.csv	Raw/sample dataset
uber_cleaned.csv	Cleaned dataset
uber_queries.sql	SQL analysis queries

🎯 Business Objective

The ultimate goal of this project is to transform raw transportation data into actionable business intelligence.

The analysis can help stakeholders:

Understand demand patterns
Improve driver allocation
Identify revenue opportunities
Understand customer behavior
Analyze route performance
Monitor operational KPIs
Make data-driven business decisions
🚀 Future Improvements

The project can be further enhanced by adding:

Real-time trip monitoring
Predictive demand forecasting
Machine learning-based fare prediction
Customer segmentation
Advanced geospatial analysis
Automated Power BI data refresh
Driver supply-demand forecasting
Anomaly detection
Interactive geographic maps
More granular location-level analysis

👩‍💻 Project Skills Demonstrated

This project demonstrates practical skills in:

Data Cleaning
Exploratory Data Analysis
Python
Pandas
SQL
Data Transformation
Feature Engineering
Power BI
Data Visualization
Dashboard Design
KPI Development
Business Analysis
Business Recommendations
Git & GitHub
📌 Conclusion

This Uber Data Analytics project demonstrates an end-to-end approach to solving a real-world transportation analytics problem.

By combining Python, SQL, and Power BI, raw trip data is transformed into an interactive business intelligence solution that provides insights into demand, revenue, routes, customers, trips, and operational performance.

The final recommendations demonstrate how data analysis can support practical business decision-making and operational improvement.
