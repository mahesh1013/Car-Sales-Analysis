CREATE DATABASE car_sales_db;

use car_sales_db;

SELECT COUNT(*) AS total_cars_sold
FROM car_sales;

-- Total Revenue-- 

SELECT SUM(Selling_Price) AS total_revenue
FROM car_sales;

-- Average Selling Price

SELECT AVG(Selling_Price) AS average_selling_price
FROM car_sales;

-- Fuel Type Distribution

SELECT Fuel_Type, COUNT(*) AS total_cars
FROM car_sales
GROUP BY Fuel_Type
ORDER BY total_cars DESC;

-- Cars by Transmission Type

SELECT Transmission, COUNT(*) AS total_cars
FROM car_sales
GROUP BY Transmission;

-- Top-Selling Car Brands

SELECT Brand, COUNT(*) AS total_sales
FROM car_sales
GROUP BY Brand
ORDER BY total_sales DESC;

-- Top-Selling Models

SELECT Model, COUNT(*) AS total_sales
FROM car_sales
GROUP BY Model
ORDER BY total_sales DESC
LIMIT 10;

-- Regional Sales-- 

SELECT Region, COUNT(*) AS total_sales
FROM car_sales
GROUP BY Region
ORDER BY total_sales DESC;

-- Brand Revenue Ranking

SELECT Brand, SUM(Selling_Price) AS total_revenue
FROM car_sales
GROUP BY Brand
ORDER BY total_revenue DESC;

-- Average Mileage by Brand-- 

SELECT Brand, AVG(Mileage) AS average_mileage
FROM car_sales
GROUP BY Brand
ORDER BY average_mileage DESC;

-- Premium-Priced Vehicles

SELECT *
FROM car_sales
WHERE Selling_Price > 2000000
ORDER BY Selling_Price DESC;