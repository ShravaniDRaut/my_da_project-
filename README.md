# 🚕 Uber Data Analytics Project

## 📌 Project Overview

This project analyzes NYC taxi/Uber trip data to identify important business insights related to trip demand, revenue, trip duration, distance, payment methods, and passenger behavior.

The project follows an end-to-end data analytics workflow:

**Raw Data → Data Cleaning → Exploratory Analysis → SQL Analysis → Power BI Dashboard → Business Insights**

The objective is to transform raw transportation data into meaningful insights that can help understand customer demand, revenue patterns, operational performance, and peak travel periods.

---

## 🎯 Business Problem

A ride-hailing/taxi company wants to understand its trip data to answer questions such as:

- When is ride demand highest?
- Which days and hours generate the most trips?
- How much revenue is generated?
- What are the most common payment methods?
- What is the average trip distance?
- What is the average fare per trip?
- Which time periods have the highest demand?
- How does trip duration vary?
- What factors contribute to higher revenue?

The goal is to use data analytics to identify patterns and provide actionable business insights.

---

## 📊 Dataset

The project uses a sample NYC taxi trip dataset.

### Dataset Files

| File | Description |
|------|-------------|
| `nyc_taxi_sample_5000.csv` | Raw/sample NYC taxi trip data |
| `uber_cleaned.csv` | Cleaned dataset used for analysis |

The dataset contains trip-level information such as:

- Pickup date and time
- Drop-off date and time
- Passenger count
- Trip distance
- Fare amount
- Payment type
- Pickup/drop-off information
- Trip duration
- Other trip-related attributes

---

## 🛠️ Tools & Technologies

### Python
Used for:

- Data loading
- Data inspection
- Data cleaning
- Missing-value analysis
- Duplicate detection
- Datetime conversion
- Feature engineering
- Exporting the cleaned dataset

Libraries used:

- Pandas
- NumPy

### SQL / MySQL

Used for:

- Data exploration
- Aggregations
- GROUP BY analysis
- Filtering
- Sorting
- Revenue analysis
- Trip analysis
- Business KPI calculations

### Power BI

Used for:

- Interactive dashboard creation
- KPI cards
- Charts and visualizations
- Slicers
- Trend analysis
- Business insights

### Git & GitHub

Used for:

- Version control
- Project management
- Storing source code
- Sharing the analytics project

---
# 📁 Project Structure

```text
my_da_project-
│
├── README.md
├── Uber Dashboard.pbix
├── cleaning.py
├── nyc_taxi_sample_5000.csv
├── uber_cleaned.csv
└── uber_queries.sql



🔄 Project Workflow
             Raw NYC Taxi Data
                     │
                     ▼
              Data Inspection
                     │
                     ▼
              Data Cleaning
                 (Python)
                     │
                     ▼
             Feature Engineering
                     │
                     ▼
             Cleaned Dataset
                     │
                     ▼
              SQL Analysis
                     │
                     ▼
             Business Metrics
                     │
                     ▼
            Power BI Dashboard
                     │
                     ▼
              Business Insights


🐍 1. Data Cleaning Using Python

The raw dataset was loaded into Pandas for initial inspection and cleaning.

Major data-cleaning steps
Loaded the raw CSV dataset
Inspected dataset dimensions
Checked column names and data types
Checked missing values
Checked duplicate records
Removed duplicate records
Converted pickup and drop-off columns to datetime format
Created useful analytical features
Saved the cleaned dataset

Example:
import pandas as pd
df = pd.read_csv("nyc_taxi_sample_5000.csv")

print(df.shape)
print(df.info())

# Check missing values
print(df.isnull().sum())

# Check duplicates
print(df.duplicated().sum())

# Remove duplicates
df = df.drop_duplicates()

# Convert datetime columns
df["pickup_datetime"] = pd.to_datetime(df["pickup_datetime"])
df["dropoff_datetime"] = pd.to_datetime(df["dropoff_datetime"])

🧮 2. Feature Engineering

Additional features were created to make the dataset more useful for analysis.

Examples include:

Trip Duration
Trip Duration = Drop-off Time - Pickup Time
Pickup Hour

Extracted from pickup datetime:

0–23
Pickup Day

Used to analyze weekday patterns.

Pickup Month

Used for monthly trend analysis.

Revenue-related metrics

Used to analyze fare/revenue patterns.

Feature engineering helps convert raw trip information into business-friendly metrics.

🗄️ 3. SQL Analysis

The cleaned dataset was analyzed using SQL.

The SQL queries are stored in:

uber_queries.sql
Example business questions analyzed
1. Total  trips
SELECT COUNT(*) AS total_trips
FROM uber_cleaned;
2. Total revenue
SELECT SUM(fare_amount) AS total_revenue
FROM uber_cleaned;
3. Average fare
SELECT AVG(fare_amount) AS average_fare
FROM uber_cleaned;
4. Average trip distance
SELECT AVG(trip_distance) AS average_trip_distance
FROM uber_cleaned;
5. Revenue by payment type
SELECT
    payment_type,
    SUM(fare_amount) AS total_revenue
FROM uber_cleaned
GROUP BY payment_type;
6. Revenue by hour
SELECT
    HOUR(pickup_datetime) AS pickup_hour,
    SUM(fare_amount) AS total_revenue
FROM uber_cleaned
GROUP BY HOUR(pickup_datetime)
ORDER BY total_revenue DESC;
📊 4. Power BI Dashboard

The cleaned dataset was imported into Power BI to create an interactive dashboard.

Dashboard file:

Uber Dashboard.pbix
📌 Dashboard KPIs

The dashboard focuses on important business KPIs such as:

Total Trips
Total Revenue
Average Fare
Average Trip Distance
Average Trip Duration
📈 Dashboard Analysis

The dashboard provides insights into:

Trip Demand

Analyzes the number of trips across different:

Hours
Days
Months
Time periods
Revenue Analysis

Analyzes:

Total revenue
Revenue trends
Revenue by payment method
Revenue by time period
Trip Analysis

Analyzes:

Trip distance
Trip duration
Average fare
Passenger behavior
Payment Analysis

Shows the distribution of trips and revenue across different payment methods.

💡 Key Business Insights

Based on the analysis, the project can be used to identify:

Peak hours when ride demand is highest
Low-demand periods
Revenue-generating time periods
Most frequently used payment methods
Average customer trip distance
Average fare per trip
Relationship between trip distance and fare
Daily and hourly demand patterns

Note: Exact numerical insights should be updated based on the final dataset/dashboard results.

📌 Business Recommendations

Based on the analysis, a ride-hailing/taxi company could:

1. Optimize Driver Availability

Increase driver availability during peak-demand hours to reduce waiting time.

2. Improve Driver Allocation

Use historical demand patterns to position drivers in high-demand areas and periods.

3. Monitor Revenue Trends

Track revenue by hour, day, and payment type to identify the strongest revenue-generating periods.

4. Improve Customer Experience

Understanding peak periods can help the company plan resources and reduce customer waiting times.

5. Use Data for Future Demand Forecasting

Historical trip patterns can be used as the foundation for a future demand-prediction model.

📷 Dashboard Preview
![Uber Dashboard](images/dashboard.png)

🚀 How to Run the Project
Step 1: Clone the repository
git clone https://github.com/ShravaniDRaut/my_da_project-.git
Step 2: Open the project
cd my_da_project-
Step 3: Install Python dependencies
pip install pandas numpy
Step 4: Run the data-cleaning script
python cleaning.py

This will process the raw dataset and generate the cleaned dataset.

Step 5: SQL Analysis
Open:

uber_queries.sql

Import the cleaned dataset into MySQL and execute the queries.

Step 6: Power BI
Open:

Uber Dashboard.pbix

Refresh the data if required and interact with the dashboard.

📂 Files Description
File	Purpose
README.md	- Project documentation
cleaning.py	-Python data-cleaning script
nyc_taxi_sample_5000.csv	-Raw dataset
uber_cleaned.csv	-Cleaned dataset
uber_queries.sql	-SQL analysis queries
Uber Dashboard.pbix	-Power BI dashboard

🎓 Skills Demonstrated
This project demonstrates practical experience with:

Python
Pandas
NumPy
Data Cleaning
Data Preprocessing
Exploratory Data Analysis
Feature Engineering
SQL
MySQL
Aggregation
GROUP BY
Window Functions
Business Analysis
Data Visualization
Power BI
KPI Development
Dashboard Design
Git
GitHub

🔮 Future Improvements

The project can be extended with:

Demand forecasting
Machine Learning
Trip-fare prediction
Customer segmentation
Anomaly detection
Advanced Power BI DAX measures
Geographical analysis using pickup/drop-off locations
Interactive map visualizations
Automated data pipelines
Real-time ride-demand monitoring

👩‍💻 Author
Shravani Raut
Aspiring Data Analyst

# Skills:
Python SQL Excel Power BI Data Analysis MySQL

⭐ Project Highlights
This project demonstrates an end-to-end Data Analytics workflow:

Python → SQL → Power BI → Business Insights

It showcases how raw transportation data can be transformed into actionable business intelligence using commonly used industry tools.
