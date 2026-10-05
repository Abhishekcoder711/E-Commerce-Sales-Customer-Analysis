CREATE DATABASE ecommerce_analysis;
use ecommerce_analysis;

show tables;

select * from Orders limit 5;
SELECT * FROM Details LIMIT 5;


-- 1. Check table structure
describe Orders;
describe Details;


-- 2. Count rows in tables
select count(*) as total_rows from Orders;
select count(*) as total_rows from Details;

ALTER TABLE Orders
CHANGE `ï»¿Order ID` `Order_ID` TEXT;
------
ALTER TABLE Details
CHANGE `ï»¿Order ID` `Order_ID` TEXT;


-- 3. Join Orders and Details tables
SELECT
    o.Order_ID,
    o.`Order Date`,
    o.CustomerName,
    o.State,
    o.City,
    d.Amount,
    d.Profit,
    d.Quantity,
    d.Category,
    d.`Sub-Category`,
    d.PaymentMode
FROM Orders o
JOIN Details d
    ON o.Order_ID = d.Order_ID
LIMIT 10;


-- 4. Check missing values in order table
select
sum(Order_ID is null) as Missing_ID,
sum(`Order Date` is null) as Missing_Date,
sum(CustomerName is null) as Missing_CN,
sum(State is null) as Missing_State,
sum(City is null) as Missing_City
from Orders;

-- 5. Check missing values in detail table
SELECT
    SUM(Order_ID IS NULL) AS Missing_Order_ID,
    SUM(Amount IS NULL) AS Missing_Amount,
    SUM(Profit IS NULL) AS Missing_Profit,
    SUM(Quantity IS NULL) AS Missing_Quantity,
    SUM(Category IS NULL) AS Missing_Category,
    SUM(`Sub-Category` IS NULL) AS Missing_Sub_Category,
    SUM(PaymentMode IS NULL) AS Missing_PaymentMode
FROM Details;


-- 6. Check duplicate Order IDs in Order table
select Order_ID,
count(*) as count
from Orders
group by Order_ID
Having count(*)>1;

-- 7. Check duplicate Order IDs in detail table
SELECT
    Order_ID,
    COUNT(*) AS Count
FROM Details
GROUP BY Order_ID
HAVING COUNT(*) > 1;



-- 8. Calculate total sales, profit and quantity
SELECT
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM Details;


-- 9. Calculate average transaction amount
SELECT
    ROUND(AVG(Amount), 2) AS Average_Order_Value
FROM Details;



-- 10. Category-wise sales, profit and quantity analysis
SELECT
    Category,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM Details
GROUP BY Category
ORDER BY Total_Sales DESC;



-- 11. Sub-category-wise sales, profit and quantity analysis
SELECT
    `Sub-Category`,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM Details
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;



-- 12. Payment mode analysis
SELECT
    PaymentMode,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Details
GROUP BY PaymentMode
ORDER BY Total_Sales DESC;



-- 13. State-wise sales, profit and quantity analysis
SELECT
    o.State,
    SUM(d.Amount) AS Total_Sales,
    SUM(d.Profit) AS Total_Profit,
    SUM(d.Quantity) AS Total_Quantity
FROM Orders o
JOIN Details d
    ON o.Order_ID = d.Order_ID
GROUP BY o.State
ORDER BY Total_Sales DESC;



-- 14. Customer-wise sales, profit and quantity analysis
SELECT
    o.CustomerName,
    SUM(d.Amount) AS Total_Sales,
    SUM(d.Profit) AS Total_Profit,
    SUM(d.Quantity) AS Total_Quantity
FROM Orders o
JOIN Details d
    ON o.Order_ID = d.Order_ID
GROUP BY o.CustomerName
ORDER BY Total_Sales DESC;


-- 15. Monthly sales and profit trend analysis
SELECT
    YEAR(STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS Order_Year,
    MONTH(STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS Order_Month,
    SUM(d.Amount) AS Total_Sales,
    SUM(d.Profit) AS Total_Profit
FROM Orders o
JOIN Details d
    ON o.Order_ID = d.Order_ID
GROUP BY
    YEAR(STR_TO_DATE(`Order Date`, '%d-%m-%Y')),
    MONTH(STR_TO_DATE(`Order Date`, '%d-%m-%Y'))
ORDER BY Order_Year, Order_Month;