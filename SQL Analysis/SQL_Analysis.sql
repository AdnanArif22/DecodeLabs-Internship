
-- Purpose: Create the project database.
CREATE DATABASE ecommerce;

-- Purpose: Select the project database.
USE ecommerce;

-- Display Data

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    *
FROM
    ecom_data;


-- Purpose: Modify the table structure.
alter table ecom_data modify TotalPrice DECIMAL(10,2);

-- IDENTIFYING & REMOVING BLANK ROWS

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    *
FROM
    ecom_data
WHERE
    CouponCode IS NULL OR CouponCode = '';

-- Purpose: Update existing records.
UPDATE ecom_data 
SET 
    CouponCode = 'NO COUPON'
WHERE
    CouponCode IS NULL OR CouponCode = '';

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    *
FROM
    ecom_data;

-- EXTRACTING YEAR AND MONTH FROM ORDER DATE

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Date, YEAR(Date) AS Order_Year
FROM
    ecom_data;

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    MONTHNAME(Date) AS Month
FROM
    ecom_data;

-- Purpose: Modify the table structure.
ALTER TABLE ecom_data
ADD column Order_Year INT,add column Order_Month VARCHAR(50);

-- Purpose: Update existing records.
UPDATE ecom_data 
SET 
    Order_Year = YEAR(Date),
    Order_Month = MONTHNAME(Date);

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Date, Order_Year, Order_Month
FROM
    ecom_data;



-- QUERIES

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    *
FROM
    ecom_data;


-- FILTERING RECORDS

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    OrderID, Product, OrderStatus, TotalPrice
FROM
    ecom_data
WHERE
    OrderStatus = 'Cancelled';

-- FILTER ONLINE PAYMENT METHOD 
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    OrderID, Product, PaymentMethod, OrderStatus, TotalPrice
FROM
    ecom_data
WHERE
    PaymentMethod = 'Online';

-- FILTER INSTAGRAM REFERRAL SOURCE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    OrderID,
    Product,
    PaymentMethod,
    OrderStatus,
    ReferralSource,
    TotalPrice
FROM
    ecom_data
WHERE
    ReferralSource = 'Instagram';


-- SORTING RECORDS

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    *
FROM
    ecom_data;

-- SORTING PRODUCTS BY HIGHEST TOTAL PRICE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Product, CouponCode, TotalPrice
FROM
    ecom_data
ORDER BY TotalPrice DESC;

-- SORTING PRODUCTS BY LOWEST TOTAL PRICE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Product, ReferralSource, TotalPrice
FROM
    ecom_data
ORDER BY TotalPrice ASC;


-- AGGREGATE FUNCTIONS

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    product, AVG(Quantity)
FROM
    ecom_data
GROUP BY product;

-- TOTAL NUMBER OF ORDERS
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    COUNT(OrderId) AS Total_Orders
FROM
    ecom_data;

-- TOTAL REVENUE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    SUM(TotalPrice) AS Total_Revenue
FROM
    ecom_data;

-- AVERAGE ORDER VALUE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    AVG(Total_Price) AS Average_Order_Value
FROM
    online_retail;

-- AVERAGE QUANTITY ORDERED
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    AVG(Quantity) AS Average_Quantity
FROM
    ecom_data;


-- GROUP BY AND HAVING

-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    PaymentMethod, SUM(TotalPrice) AS Total_Revenue
FROM
    ecom_data
GROUP BY PaymentMethod
ORDER BY Total_Revenue DESC;

-- TOTAL REVENUE BY REFERRAL SOURCE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    ReferralSource, SUM(TotalPrice) AS Total_Revenue
FROM
    ecom_data
GROUP BY ReferralSource
ORDER BY Total_Revenue DESC;

-- PRODUCTS WITH SALES GREATER THAN 2000
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Product, SUM(TotalPrice) AS Product_Sales
FROM
    ecom_data
GROUP BY Product
HAVING Product_Sales > 2000;

-- TOP 3 PRODUCTS BY REVENUE
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    Product, SUM(TotalPrice) AS Total_Revenue
FROM
    ecom_data
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 3;
-- TOP 3 PRODUCTS BY ORDER
-- Purpose: Execute a query to retrieve data for analysis.
SELECT 
    product, COUNT(OrderID) AS orders
FROM
    ecom_data
GROUP BY Product
ORDER BY orders DESC
LIMIT 3;














