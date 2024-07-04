create database pelicon;
 CREATE TABLE pelicon.CustomerData (
    Customer INT,
    Method_of_Payment VARCHAR(50),
    Items INT,
    Discount DECIMAL(5, 2),
    Sales DECIMAL(5, 2),
    Gender VARCHAR(10),
    Marital_Status VARCHAR(10),
    Age INT
);
INSERT INTO pelicon.CustomerData (Customer, Method_of_Payment, Items, Discount, Sales, Gender, Marital_Status, Age) VALUES
(1, 'Discover', 1, 0, 39.5, 'Male', 'Married', 32),
(2, 'Proprietary Card', 1, 25.6, 102.4, 'Female', 'Married', 36),
(3, 'Proprietary Card', 1, 0, 22.5, 'Female', 'Married', 32),
(4, 'Proprietary Card', 5, 121.1, 100.4, 'Female', 'Married', 28),
(5, 'Mastercard', 2, 0, 54, 'Female', 'Married', 34),
(6, 'Mastercard', 1, 0, 44.5, 'Female', 'Married', 44),
(7, 'Proprietary Card', 2, 19.5, 78, 'Female', 'Married', 30),
(8, 'Visa', 1, 0, 22.5, 'Female', 'Married', 40),
(9, 'Proprietary Card', 2, 22.48, 56.52, 'Female', 'Married', 46),
(10, 'Proprietary Card', 1, 0, 44.5, 'Female', 'Married', 36),
(11, 'Proprietary Card', 1, 0, 29.5, 'Female', 'Married', 48),
(12, 'Proprietary Card', 1, 7.9, 31.6, 'Female', 'Married', 40),
(13, 'Visa', 9, 103.6, 160.4, 'Female', 'Married', 40),
(14, 'Visa', 2, 24.5, 64.5, 'Female', 'Married', 46),
(15, 'Visa', 1, 0, 49.5, 'Male', 'Single', 24),
(16, 'Proprietary Card', 2, 12.6, 71.4, 'Male', 'Single', 36),
(17, 'Proprietary Card', 3, 53, 94, 'Female', 'Single', 22),
(18, 'Discover', 3, 0, 54.5, 'Female', 'Married', 40),
(19, 'Mastercard', 2, 19, 38.5, 'Female', 'Married', 32),
(20, 'Proprietary Card', 6, 32.2, 44.8, 'Female', 'Married', 56),
(21, 'Proprietary Card', 1, 7.9, 31.6, 'Female', 'Single', 28),
(22, 'Proprietary Card', 4, 29.67, 70.82, 'Female', 'Married', 38),
(23, 'American Express', 7, 66.5, 266, 'Female', 'Married', 50),
(24, 'Proprietary Card', 2, 0, 74, 'Female', 'Married', 42);
#Q1. Which gender gives the maximum sales? 
SELECT sum(Sales) from pelicon.CustomerData where gender = "Male"; #160
 SELECT sum(Sales) from pelicon.CustomerData where gender = "Female";# 1485
 # Q2. Which age group and gender gives the maximum sales? 
 SELECT 
    Age,
    Gender,
    SUM(Sales) AS TotalSales
FROM 
    pelicon.CustomerData
GROUP BY 
    Age, Gender
ORDER BY 
    TotalSales DESC
LIMIT 1;  # age 40 total sales -269.00
#Q3. What is the highest discount given to females ?  
 select * from pelicon.CustomerData where gender = "Female" order by discount desc; 
 #What is the average discount given to females in the store? 
 select avg(discount) from pelicon.CustomerData  where gender = "Female"; #25.3785

