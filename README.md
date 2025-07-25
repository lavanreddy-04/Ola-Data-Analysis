Ola-Data-Analysis
A complete data analysis project on Ola ride bookings in Hyderabad city using MS Excel, MySQL, and Power BI. This project demonstrates how real-world business problems can be solved using data analytics, with a special focus on booking behavior, ride patterns, cancellations, revenue, and customer/driver ratings.
📝Project Overview
This project analyzes a generated dataset of Ola bookings in Hyderabad, containing 10,000 records and 19 columns related to ride metadata such as vehicle types, ratings, booking status, customer behavior, ride value, and cancellation reasons.

Through structured data cleaning, analysis, SQL queries, Excel computation, and Power BI dashboards, this project provides meaningful insights for decision-making in the ride-hailing business.
📂 Data Source
The dataset was created using ChatGPT prompts, simulating real-world Ola ride data in Hyderabad. It includes columns like:

Date, Time, Booking ID, Booking Status

Customer & Vehicle Info

Pickup & Drop Locations

Cancellation & Incompletion Reasons

Ride Distance, Value, Ratings
🛠️ Technologies Used
📌 MS Excel
Used for initial data cleaning, preprocessing, and basic exploration

Performed filtering, sorting, pivot tables for summary views

Helped with quick checks on ratings, booking counts, and vehicle performance

📌 MySQL
Created a database named ola and performed analytical queries

Built SQL views to answer business questions like booking success rates, top customers, cancellation trends, and more

Example SQL Questions Solved:

Retrieve all successful bookings

Average ride distance by vehicle type

Top 5 customers by ride count

Most common driver cancellation reasons

Total booking value of successful rides

Incomplete rides grouped by reasons

Customer rating averages by vehicle

Weekend ride patterns, daily booking value averages

Cancellation percentages per day

✅ SQL Script is available in the repo (OLA DATA ANALYSIS (SQL).sql)

📌 Power BI
Built a detailed interactive dashboard using .pbit template

Visualized trends, distributions, and metrics for business insights

Power BI Dashboards Include:

📅 Ride Volume Over Time

📌 Booking Status Breakdown

🚗 Top 5 Vehicle Types by Distance

⭐ Avg Customer Ratings by Vehicle

❌ Reasons for Ride Cancellations

💸 Revenue by Payment Method

👥 Top Customers by Booking Value

🗓️ Distance & Rating Distribution over Time

✅ Power BI Template file included: OLA data analysis.pbit
🔍 Key Features & Insights
Identified top 3 pickup locations with highest success rates

Revealed peak cancellation periods & top cancellation causes

Compared driver vs customer ratings by vehicle type

Analyzed total revenue generated from successful rides

Detected weak-performing vehicle segments by low ratings

Weekend ride analysis uncovered higher cancellation percentages

Helped business answer:
“Which customers contribute the most?”,
“What reasons cause driver-initiated cancellations?”,
“Where do most successful bookings start from?”

📁 Files in the Repository
OLA DATA ANALYSIS (SQL).sql – All 15+ SQL queries & views

OLA data analysis.pbit – Power BI report/dashboard template

hyderabad_booking_data.csv.xlsm – Raw dataset (Excel format)
