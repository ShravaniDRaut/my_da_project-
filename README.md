# 🚕 Uber Data Analytics Project

## 📌 Project Overview
-This project analyzes Uber trip data to identify patterns in trip demand, revenue, route performance, customer behavior, and operational performance.
-The objective is to transform raw trip-level data into meaningful business insights using Python, SQL, and Power BI.

The project follows a complete data analytics workflow:
**Raw Data → Data Cleaning → Data Transformation → SQL Analysis → Power BI Dashboard → Business Insights → Recommendations**

---

## 🎯 Business Problem

Ride-hailing businesses need to understand:

- When demand is highest
- Which days and hours generate the most trips
- How revenue changes over time
- Which payment methods are most commonly used
- How trip distance affects fare
- Which vendors perform better
- Which routes and pickup locations have higher demand
- How customer and trip characteristics affect business performance

This project addresses these questions through data-driven analysis.

---

## 🎯 Project Objectives

1. Analyze overall Uber trip performance.
2. Identify peak demand hours and days.
3. Analyze revenue trends.
4. Understand payment method distribution.
5. Analyze trip distance and fare patterns.
6. Compare vendor performance.
7. Identify high-demand locations and routes.
8. Generate actionable business recommendations.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and preprocessing |
| Pandas | Data manipulation |
| SQL / MySQL | Data analysis and business queries |
| Power BI | Interactive dashboard and visualization |
| Git & GitHub | Version control and project documentation |

---

## 📂 Dataset

The project uses a sample NYC taxi/Uber-style trip dataset containing trip-level information such as:

- Pickup datetime
- Dropoff datetime
- Pickup location
- Dropoff location
- Trip distance
- Fare amount
- Payment type
- Passenger count
- Vendor information

### Dataset Files

- [nyc_taxi_sample_5000.csv](nyc_taxi_sample_5000.csv) — Raw/sample dataset
- [uber_cleaned.csv](uber_cleaned.csv) — Cleaned dataset

---

# 🔄 Project Workflow

```text
Raw Dataset
     ↓
Data Exploration
     ↓
Data Cleaning using Python
     ↓
Feature Engineering
     ↓
SQL Database & Analysis
     ↓
Power BI Data Modeling
     ↓
Dashboard Development
     ↓
Business Insights
     ↓
Business Recommendations
🐍 1. Data Cleaning & Preparation

Python and Pandas were used to prepare the dataset for analysis.

Cleaning steps included:
Loading the raw dataset
Understanding dataset structure
Checking data types
Checking missing values
Checking duplicate records
Removing duplicate records
Converting datetime columns
Validating numerical fields
Creating analytical features

Important features created:
Pickup hour
Pickup day
Pickup weekday
Trip duration
Trip distance
Revenue-related metrics

The cleaning process is available in:


🗄️ 2. SQL Analysis
SQL was used to answer business questions and identify important patterns in the dataset.

Examples of analysis include:

Total number of trips
Total revenue
Average fare
Average trip distance
Trips by hour
Trips by weekday
Revenue by payment type
Vendor performance
Peak demand periods
Route-level analysis

SQL queries are available in:
Uber MySQL Analysis

📊 3. Power BI Dashboard

The cleaned dataset was imported into Power BI to create an interactive business intelligence dashboard.

The dashboard contains multiple analytical pages.

Dashboard Pages
Executive Overview
Demand Analysis
Route Analysis
Revenue Analysis
Customer & Trip Analysis
Final Business Recommendations

Power BI file:
 Uber Dashboard.pbix

📸 Dashboard Preview
Executive Overview

Demand Analysis

Route Analysis

Revenue Analysis

Customer & Trip Analysis

Final Business Recommendations

📈 Key Business Insights

The analysis identified several important patterns:

🚕 Trip Demand
Trip demand varies significantly by hour and day.
Certain time periods show consistently higher trip volumes.
Peak demand periods can help businesses optimize driver availability.
💰 Revenue
Revenue changes throughout the day based on trip demand and fare patterns.
Payment methods show different levels of customer usage.
Higher-demand periods can contribute significantly to overall revenue.
📍 Route & Location
Some pickup and drop-off locations generate higher trip volumes.
High-demand locations can be prioritized for driver allocation.
👥 Customer & Trip Behavior
Trip distance and passenger count influence trip characteristics.
Different trip patterns can help identify customer usage behavior.
🚗 Vendor Performance
Vendor-level analysis helps compare trip volume and revenue contribution.
Performance differences can be monitored to improve operational efficiency.
💡 Business Recommendations

Based on the analysis, the following recommendations can be considered:

-Optimize driver availability during peak demand periods.
-Prioritize high-demand pickup locations to reduce customer waiting time.
-Use demand patterns to improve driver allocation across different time periods.
-Monitor revenue performance by payment type to understand customer preferences.
-Analyze high-performing routes to identify opportunities for better fleet utilization.
-Monitor vendor performance regularly using trip volume and revenue KPIs.
-Use historical demand patterns for operational planning and resource allocation.
📌 Project Outcome

This project demonstrates an end-to-end data analytics workflow using:

Python + SQL + Power BI + GitHub

The final dashboard converts raw trip data into business-focused insights that can support:

Demand planning
Revenue analysis
Driver allocation
Route optimization
Customer behavior analysis
Operational decision-making
📁 Repository Structure
my_da_project-
│
├── README.md
├── cleaning.py
├── Uber Dashboard.pbix
├── nyc_taxi_sample_5000.csv
├── uber_cleaned.csv
├── uber_queries.sql
│
├── overview.png
├── demand analysis.png
├── Route analysis.png
├── Revenue Dashboard.png
├── customer analysis.png
└── final summary.png

👩‍💻 Author
Shravani Raut

Data Analytics Project

Skills Demonstrated
Python
Pandas
SQL
Power BI
Data Cleaning
Data Analysis
Data Visualization
Business Intelligence
Business Insights

