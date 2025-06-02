SHOW TABLES;

SHOW COLUMNS FROM customer_orders_realistic;
DESCRIBE drivers_realistic;
DESC restaurants;
DESC traffic_data;

SELECT * FROM drivers_realistic;
SELECT * FROM restaurants;
SELECT * FROM traffic_data;
SELECT * FROM customer_orders;

SELECT COUNT(*) AS ordercounts FROM customer_orders;
SELECT COUNT(*) driverscounts FROM drivers_realistic;
SELECT COUNT(*) restaurantscounts FROM restaurants;
SELECT COUNT(*) trafficounts FROM traffic_data;

-- Estimated Travel Time
SELECT o.orderID,
o.DistanceKM,
o.DistanceKM * (1 + t.trafficdensity / 100) AS estimated_travel_time
FROM customer_orders AS o
JOIN traffic_data AS t ON
o.LocationID = t.LocationID;

-- OR in Min
SELECT o.orderID,
o.DistanceKM,
ROUND(O.DistanceKM * (1 + t.trafficdensity / 100)) AS estimated_travel_time_min
FROM customer_orders AS o
JOIN traffic_data AS t ON
o.LocationID = t.LocationID;

-- Driver Shift Length
SELECT driverID,
Shiftstart,
Shiftend,
timestampdiff(HOUR, shiftstart, shiftend) AS Driver_Shift_Length
FROM drivers_realistic;

-- Average Delivery Time Per Restuarant
SELECT r.restaurantID, r.RestaurantName,
AVG(o.deliveryhours) AS avg_delivery_time
FROM restaurants AS r
JOIN customer_orders AS o
ON r.RestaurantID = o.RestaurantID
GROUP BY r.RestaurantID, r.RestaurantName;

-- Busy Periods for Drivers
SELECT DISTINCT DriverID,
EXTRACT(HOUR FROM ordertimestamp) AS order_hour,
count(*) AS no_of_orders
FROM customer_orders
GROUP BY DriverID, order_hour
ORDER BY 1;

-- Order Volume by Area
SELECT o.LocationID,
COUNT(*) AS total_orders, t.LocationName
FROM customer_orders AS o
JOIN traffic_data AS t
ON o.LocationID = t.LocationID
GROUP BY LocationID, LocationName
ORDER BY 1;

-- Average, Min, Max Delivery Time
SELECT AVG(DeliveryHours) AS avg_delivery_time,
MIN(DeliveryHours) AS min_delivery_time,
MAX(DeliveryHours) AS max_delivery_time
FROM customer_orders;

-- Frequency of Delivery Statuses
SELECT OrderStatus,
COUNT(*) AS StatusCount
FROM customer_orders
GROUP BY OrderStatus;

-- Shift Length and Counts
SELECT DriverID, DriverName,
ROUND(AVG(TIMESTAMPDIFF(HOUR, ShiftStart, ShiftEnd))) AS Avg_shiftlength,
COUNT(*) AS NumberOfShifts
FROM drivers_realistic
GROUP BY DriverID, DriverName;

-- Number of Orders per Restaurant
SELECT RestaurantID,
COUNT(*) TotalOrders
FROM customer_orders
GROUP BY RestaurantID;

-- Traffic Density Statistics
SELECT AVG(TrafficDensity) AS avg_traffic_density,
MIN(TrafficDensity) AS min_traffic_density,
MAX(TrafficDensity) AS max_traffic_density
FROM traffic_data;

-- Identifying Peak Delivery Times
SELECT EXTRACT(HOUR FROM OrdertimeStamp) AS HourofDay,
COUNT(*) AS OrderCount
FROM customer_orders
GROUP BY HourofDay;

SELECT DAYNAME(OrdertimeStamp) AS DayOfWeek,
COUNT(*) AS OrderCount
FROM customer_orders
GROUP BY dayofweek
ORDER BY 2;

SELECT d.ShiftID, AVG(o.DeliveryHours) AS AvgDeliveryTime
FROM customer_orders o
JOIN drivers_realistic d 
ON o.DriverID = d.DriverID
GROUP BY d.ShiftID;

SELECT t.TrafficDensity,
AVG(o.DeliveryHours) AS AvgDeliveryTime
FROM customer_orders o
JOIN traffic_data t
ON o.LocationID = t.LocationID
GROUP BY t.TrafficDensity;

SELECT r.RestaurantID, AVG(o.DeliveryHours) AS AvgDeliveryTime
FROM customer_orders o
JOIN restaurants r
ON o.RestaurantID = r.RestaurantID
GROUP BY r.RestaurantID;