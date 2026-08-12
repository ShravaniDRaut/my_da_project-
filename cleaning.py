import pandas as pd 
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns 

df=pd.read_csv(r"C:\Users\SHRAVANI RAUT\Desktop\Uber_project\nyc_taxi_sample_5000.csv")
print(df.head(10))

print(df.shape)
print(df.columns) #column index of the DataFrame
print(df.info)

print(df.isnull())
print(df.isnull().sum())

print(df.duplicated().sum())

#if there any duplicate then
df=df.drop_duplicates()
print(df.shape)

# Convert Date Columns
df["pickup_datetime"] =pd.to_datetime(df["pickup_datetime"])
df["dropoff_datetime"]=pd.to_datetime(df["dropoff_datetime"])

# Feature engineering
df["trip_duration"]=(df["dropoff_datetime"]-df["pickup_datetime"]).dt.total_seconds()/60  #trip duration(minutes)

df["pickup_hour"]=df["pickup_datetime"].dt.hour

df["pickup_day"]=df["pickup_datetime"].dt.day_name()

df["pickup_month"]=df["pickup_datetime"].dt.month_name()

df["pickup_date"]=df["pickup_datetime"].dt.date

df["is_weekend"]=df["pickup_day"].isin(["saturday","sunday"])

# Remove invalid Records
df=df[df["trip_distance"]>0]
df=df[df["fare_amount"]>0]
df=df[df["trip_duration"]>0]

# create KPIs
df["fare_per_km"]=(df["fare_amount"]/df["trip_distance"]).round(2)
df["tip_per"]=(df["tip_amount"]/df["fare_amount"]*100).round(2)

print(df.head())
print(df.describe())
print(df.info())

df.to_csv("uber_cleaned.csv",index=False)

# EDA 

# 1.what are the busiest pickup hours?
hourly_trips= df.groupby("pickup_hour").size()

plt.figure(figsize=(10,5))
plt.bar(hourly_trips.index,hourly_trips.values)
plt.title("Trips by Pickup Hour")
plt.xlabel("hour of Day")
plt.ylabel("Number of Trips")
plt.xticks(range(24))
plt.show()

# 2.which days have the highest demand 
day_order=["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","sunday"]
daily_Trips=(
    df["pickup_day"]
    .value_counts()
    .reindex(day_order))

plt.figure(figsize=(10,5))
plt.bar(daily_Trips.index , daily_Trips.values)
plt.title("Trips by Day")
plt.xlabel("Day")
plt.ylabel("Number of Trips")
plt.xticks(rotation =45)
plt.tight_layout()
plt.show()
        

print(df['pickup_day'].value_counts())
print(df['pickup_day'].unique())

# 3.Which payment method is most popular?
payment = df["payment_type"].value_counts()

plt.figure(figsize=(7,7))
plt.pie(
    payment.values,
    labels=payment.index,
    autopct="%1.1f%%"
)

print(df["payment_type"].value_counts())
plt.title("Payment Type Distribution")
plt.show()

# 4.Top 10 Pickup Locations
top_pickups = (
    df["pickup_location_id"]
    .value_counts()
    .head(10)
)

plt.figure(figsize=(10,5))
plt.bar(
    top_pickups.index.astype(str),
    top_pickups.values
)

plt.title("Top 10 Pickup Locations")
plt.xlabel("Location ID")
plt.ylabel("Trips")
plt.show()

# 5.Top 10 Dropoff Locations
top_dropoffs = (
    df["dropoff_location_id"]
    .value_counts()
    .head(10)
)

plt.figure(figsize=(10,5))
plt.bar(
    top_dropoffs.index.astype(str),
    top_dropoffs.values
)

plt.title("Top 10 Dropoff Locations")
plt.xlabel("Location ID")
plt.ylabel("Trips")
plt.show()

# 6.Revenue by Pickup Hour
revenue_hour = (
    df.groupby("pickup_hour")["total_amount"]
    .sum()
)

plt.figure(figsize=(10,5))
plt.plot(
    revenue_hour.index,
    revenue_hour.values,
    marker="o"
)

plt.title("Revenue by Pickup Hour")
plt.xlabel("Hour")
plt.ylabel("Revenue")
plt.grid(True)

plt.show()

# 7.Relationship Between Distance and Fare
plt.figure(figsize=(8,6))

plt.scatter(
    df["trip_distance"],
    df["fare_amount"],
    alpha=0.5
)

plt.title("Trip Distance vs Fare")
plt.xlabel("Distance")
plt.ylabel("Fare")

plt.show()

# 8.Vendor Performance
vendor = (
    df.groupby("vendor_id")["total_amount"]
    .sum()
)

plt.figure(figsize=(6,5))

plt.pie(
    vendor.values,
    labels=vendor.index,
    autopct="%1.1f%%"
   ,
)

plt.title("Revenue by Vendor")
plt.xlabel("Vendor")
plt.ylabel("Revenue")

plt.show()

import os

print(os.getcwd())
df.to_csv(r"C:\Users\SHRAVANI RAUT\Documents\uber_cleaned.csv", index=False)