create database uber_analysis;
USE uber_analysis;

CREATE TABLE uber_trips(
      trip_id INT primary KEY,
      vendor_id INT,
      pickup_datatime datetime,
      dropoff_datetime datetime,
      passenger_count int,
      trip_distance decimal(10,2),
      pickup_location_id int,
      dropoff_location_id int,
      payment_type varchar(50),
	  fare_amount DECIMAL(10,2),
      total_amount DECIMAL(10,2)
);
# Total Rows
SELECT COUNT(*) AS total_records
from uber_cleaned;

# View Sample Data
select * from uber_cleaned
limit 10;

# Check Null Values
select * from uber_cleaned
where pickup_datetime is null
   or dropoff_datetime is null;
   
   
# 1.Total Trips 
select count(*) As total_trips
from uber_cleaned;

# 2.Total Revenue
select round(Sum(total_amount),2) as total_revenue
from uber_cleaned;

# 3. Average Fare
select round(avg(fare_amount),2) as avg_fare
from uber_cleaned;

# 4.Average Trip Distance
select round(avg(trip_distance),2) as avg_distance
from uber_cleaned;

# 5.Trips by Vendor
select vendor_id,count(*) As trips 
from uber_cleaned
group by vendor_id;

# 6.Revenue by Vendor
 SELECT
    vendor_id,
    ROUND(SUM(total_amount),2) revenue
FROM uber_cleaned
GROUP BY vendor_id;
 
# 7.Most Popular Payment Method
select payment_type,
 count(*) trips
 from uber_cleaned
group by payment_type
order by trips desc;

# 8.Revenue by Payment Type
select 
payment_type,  
round(sum(total_amount),2) revenue 
from uber_cleaned
group by payment_type;
 
# 9.Trips by Pickup Hour
select 
pickup_hour,
count(*) trips
from uber_cleaned
group by pickup_hour
order by pickup_hour;

# 10.Revenue by Hour
select 
sum(total_amount) revenue,
pickup_hour
from uber_cleaned
group by pickup_hour
order by pickup_hour desc ;

# 11. Busiest Pickup Locations
select 
pickup_location_id,
count(*)trips
from uber_cleaned
group by pickup_location_id
order by trips desc
limit 10;

# 12. Top Dropoff Locations
select 
dropoff_location_id,
count(*) trips
from uber_cleaned
group by dropoff_location_id
order by trips DESC
limit 10;

# 13. Highest Revenue Pickup Zone
select 
pickup_location_id,
sum(total_amount) revenue
from uber_cleaned
group by pickup_location_id 
order by revenue desc 
limit 10;

# 14.Average Fare by Passenger Count
select 
round(avg(fare_amount),2),
passenger_count
from uber_cleaned
group by passenger_count;

# 15. Average Distance by Passenger Count
SELECT
    passenger_count,
    AVG(trip_distance) avg_distance
FROM uber_cleaned
GROUP BY passenger_count;

# 16.Daily Trips
select 
 Date(pickup_datetime) trip_date,
 count(*)trips
 from uber_cleaned
 group by trip_date
 order by trip_date desc;
 
 # 17. Daily Revenue
  SELECT
    DATE(pickup_datetime) trip_date,
   round(SUM(total_amount),2) revenue
FROM uber_cleaned
GROUP BY trip_date
order by trip_date desc;

# 18.Weekend vs Weekday Trips
select  case 
when dayofweek(pickup_datetime)in(1,7)
then 'weekend'
else 'weekday'
end day_type,
count(*) trips
from uber_cleaned
group by day_type;

# 19.longest trips
    select * from uber_cleaned 
    order by trip_distance desc
    limit 10;

# 20. Highest Fare Trips
select * 
from uber_cleaned
order by fare_amount desc;

# 21.Rank Vendors by Revenue
select
vendor_id,
sum(total_amount) revenue,
Rank() over(
order by sum(total_amount) desc
) revenue_rank
from uber_cleaned
group by vendor_id;

# 22.Running Revenue
select 
sum(total_amount) daily_revenue,
date(pickup_datetime) trip_date,
sum(sum(total_amount))
over(
   order by date(pickup_datetime)
)cumulative_revenue
from uber_cleaned
group by date(pickup_datetime);   

# 23.Revenue Difference from Previous Day
with daily_revenue as(
select 
sum(total_amount) revenue,
date(pickup_datetime) trip_date
from uber_cleaned
group by date(pickup_datetime) 
)
select 
trip_date,
revenue,
round
(revenue-
lag(revenue) over(order by trip_date),2 )
as difference
from daily_revenue; 

# 24.Top 3 Revenue Locations
select 
pickup_location_id,
sum(total_amount) revenue
from uber_cleaned
group by pickup_location_id
order by sum(total_amount) desc limit 3;

WITH loc_revenue AS
(
SELECT
    pickup_location_id,
    SUM(total_amount) revenue
FROM uber_cleaned
GROUP BY pickup_location_id
)

SELECT *
FROM
(
SELECT *,
DENSE_RANK() OVER(
ORDER BY revenue DESC
) rnk
FROM loc_revenue
) x
WHERE rnk <= 3;