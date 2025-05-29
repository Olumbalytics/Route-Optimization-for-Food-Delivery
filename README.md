# Route-Optimization-for-Food-Delivery: Improving Delivery Efficiency in Dense Urban Areas

## Table of Content
- [Project Overview](#project-overview)
- [Business Context](#business-context)
- [Project Objectives](#project-objectives)
- [Project Scope](#project-scope)
- [Tech Stack](#tech-stack)
- [Datasets Used](#datasets-used)
- [Summary Reports](#summary-reports)
- [Key Takeaways](#key-takeaways)
- [Future Improvements](#future-improvements)
- [Conclusion](#conclusion)
  
    
## Project Overview
This project explores how data-driven route optimization can enhance food delivery operations in densely populated cities. Leveraging SQL for data manipulation and Power BI for modeling and geospatial visualization, I analyzed simulated datasets to identify opportunities for improving delivery speed, reducing costs, and enhancing driver satisfaction.

## Business Context
UrbanEats, a fictional food delivery company, operates in congested metropolitan areas and faces several key challenges:
- Increasing delivery delays
- High operational costs due to inefficient routing
- Poor delivery time estimates
- Elevated driver turnover caused by job stress
#### To remain competitive, UrbanEats seeks a scalable route optimization solution to address these pain points.

## Project Objectives
This project aims to:
- Reduce delivery times by at least 20%
- Lower operational costs by 15%
- Increase driver satisfaction through more efficient routing
- Deliver a better customer experience via accurate, real-time updates

## Project Scope
The end-to-end data process includes:
- Data Exploration – Understanding trends in order, traffic, and delivery data
- Data Transformation – Cleaning and preparing data using SQL
- Data Analysis – Uncovering key insights about delivery patterns and bottlenecks
- Data Visualization – Presenting findings through interactive Power BI dashboards
- Insight Generation – Recommending actionable strategies for route optimization

## Tech Stack
- SQL (MySQL)
  - Data cleaning, transformation, and querying
  - Route distance/time analysis
- Power BI
  - Data modeling and DAX
  - Geospatial and performance visualizations

## Datasets Used
This case study uses four core datasets:
1. Customer Orders and delivery details:
  - OrderID, CustomerID, RestaurantID, DriverID,
  Delivery coordinates (Latitude, Longitude),
  OrderTimestamp, DeliveryTime, TimeTakenToDeliver
  DistanceKM, DeliveryHours, and OrderStatus
2. Traffic Data by location:
  - LocationID, LocationName, TrafficDensity
3. Drivers shift data:
  - DriverID, DriverName, ShiftStart, ShiftEnd
4. Restaurants information:
  - RestaurantID, RestaurantName, Address

## Summary Reports
### ![Route Overview](https://github.com/user-attachments/assets/e1cd4f74-0530-4866-a40e-702768fc840f)

Key Insights:
- Out of 1000 orders, **653 (65.3%) are pending** and only **347 (34.7%) have been delivered**.
- **Thursday** is the busiest day (233 orders), while **Tuesday** sees the lowest volume (82 orders).
- The most active driver is **Thomas Mcdonald (36 deliveries)**.
- **Nguyen-Lopez** is the top restaurant in terms of order volume (68).



### ![Route Traffic Density](https://github.com/user-attachments/assets/905deb70-df5e-405f-b667-c740ceb3167e)

Key Insights:
- Average traffic density is **70 vehicles/minute**, with **7AM** being the most congested time.
- Restaurants with highest delays: **McDaniel-Harrington** and **Ryan, Alexander and Willis**.
- Delivery time fluctuates by hour, peaking between 8AM and 10AM.

  

### ![Route Driver Attrition](https://github.com/user-attachments/assets/ade4a02e-3007-4bfe-98eb-8094206414b8)

Key Insights:
- Standard shift duration is between **6–8 hours** with an average of **7 hours**.
- Top-performing drivers with the least delays: **Jacqueline Chen** and **Rebecca Hancock**.
- Drivers with highest delays: **Cynthia Vasquez** and **Eric Garcia**.
- Shift allocation is uneven, with a few drivers handling the majority of shifts.



## Key Takeaways
- SQL is effective for querying and preparing data for delivery at scale.
- Power BI geospatial visuals helped identify congestion hotspots and inefficient routes.
- Optimizing delivery paths resulted in measurable improvements in service time and operational costs.

## Future Improvements
- Incorporate **machine learning** for predictive route optimization.
- Implement **real-time data streaming** for traffic and order status.
- Expand dataset to include **fuel usage and delivery cost breakdowns**.

## Conclusion
As urban areas continue to grow, efficient last-mile logistics are critical. This project simulates real-world challenges and demonstrates how modern data tools can solve them. It also serves as a strong portfolio example for business intelligence and logistics analytics.
