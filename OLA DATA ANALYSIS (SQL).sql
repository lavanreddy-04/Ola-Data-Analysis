create database ola;
use ola;
#1. Retrieve all successfull bookings :
create view Successfull_Bookings as
Select * from bookings 
where `Booking status` = 'Success';

select * from Successfull_Bookings;

#2. find average ride distance for each vechile type:
CREATE VIEW avg_distance_for_each_vehicle as 
select `vehicle Type` , avg(`Ride Distance`) as avg_Distance from bookings 
group by `vehicle Type`;

select * from avg_disatnce;

#3 get the total number of cancelled rides by customers:
create view `total number of cancelled rides by customers` as
select count(`Cancelled Rides by Customer`) from bookings
where `Booking status` = 'Cancelled by Customer';

select * from `total number of cancelled rides by customers`;

#4. list the top 5 customers who booked the highest number of rides:
CREATE VIEW top_5_customers  as
select `Customer ID` , count(`Booking ID`) as toatal_rides from bookings
group by `Customer ID` 
order by toatal_rides desc limit 5;

select * from top_5_customers;

#5. get the numbers of rides cancelled by drivers due to personal and car related reasons :
create view cancelled_personal_and_car_related_reasons as
select count(`Reason for cancelling by Driver`) from bookings
where `Reason for cancelling by Driver`= 'Personal & Car related issues';

select * from cancelled_personal_and_car_related_reasons;

#6. find the maximum and minimum driver ratings for prime sedan bookings:
CREATE view max_and_min__ratings as 
select `Vehicle Type`, max(`Driver Ratings`) ,min(`Driver Ratings`) from bookings
where `Vehicle Type` = 'Prime Sedan';

select * from max_and_min__ratings;

#7.find the average customer rating per each vehcile:
create view  average_customer_rating as
select `Vehicle Type`, avg(`Customer Rating`) as avg_cst_rating from bookings
group by `Vehicle Type`;

select * from average_customer_rating ;

#8 calculate the total booking value of rides completed successfully
create view total_booking_value as
select `Booking Status` , sum(`Booking Value`) as total_booking_value from bookings
where  `Booking Status`='Success';

select * from total_booking_value;

#9 list all the incomplete rides along with reason:
create view Incomplete_Rides as
select `Booking ID`,`Incomplete Rides Reason` from bookings
where `Incomplete Rides`='1';

select*from Incomplete_Rides;

#10 Retrieve all bookings that occurred on weekends:
Create view wekend_bookings as
select * from bookings 
where dayofweek(`Date`) in (1,7);

Select*from wekend_bookings;

#11. Find the top 3 pickup locations by number of successful bookings:
create view top_3_pickup_locations as
 select `Pickup Location`, count(*) as total  from bookings
 where `Booking Status`= 'Success'
 group by `Pickup Location` 
 order by total desc limit 3;
 
 select * from top_3_pickup_locations;
 
 #12.Get average booking value for each day of the week:
 create view days_avg_booking_value as
 select dayname(`Date`) as `Day`,avg(`Booking value`)   from bookings
 group by `Day`;
 
 select * from days_avg_booking_value;
 
 #13. Get the percentage of rides cancelled by the customer per day:
 create view rides_cancellation_percenatge_per_day as
 select `Date`, count(*) * 100.0/(select count(*) from bookings where `Date` = b.`Date`) as cancelled_bookings from bookings b
 where `Booking Status` = 'Cancelled by Customer'
 group by `Date`;
 
 select * from rides_cancellation_percenatge_per_day;
 
 #14.List the most common cancellation reasons by drivers:
 create view `most common cancellation reasons by drivers` as
 select `Reason for cancelling by Driver`, count(*) as total from bookings
 where `Booking Status`= 'Cancelled by Driver'
 group by `Reason for cancelling by Driver` 
 order by total desc;
 
 select * from `most common cancellation reasons by drivers`;
 
 #15. Count incomplete rides grouped by the reason.
 create view total_incomplete_rides_grouped_by_reason as
 select `Incomplete Rides Reason`, count(`Incomplete Rides`) as total_incomplete_rides from bookings
 where `Incomplete Rides`= '1'
 group by `Incomplete Rides Reason`;
 
 select * from total_incomplete_rides_grouped_by_reason;


















