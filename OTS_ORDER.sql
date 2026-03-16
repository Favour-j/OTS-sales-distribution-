SELECT *
FROM OTS_Order;

-- Setting Delivery Time to 0 for cancelled orders 
UPDATE OTS_Order 
SET Delivery_Time_Min = 0 
WHERE Status = 'Cancelled' AND Delivery_Time_Min IS NULL;

-- Setting Rating to 0 for orders where no rating was given
UPDATE OTS_Order 
SET Customer_Rating = 0 
WHERE Customer_Rating IS NULL;

SELECT Delivery_Time_Min, Customer_Rating
FROM OTS_Order;


-- Standardize Service Types to Proper Case
UPDATE OTS_Order SET Service_Type = 'Food' WHERE Service_Type = 'food';
UPDATE OTS_Order SET Service_Type = 'Ride' WHERE Service_Type = 'ride';

-- Standardize Payment Methods
UPDATE OTS_Order SET Payment_Method = 'Wallet' WHERE Payment_Method = 'wallet';

-- Find orders with unusually high delivery times (e.g., > 120 mins)
SELECT * FROM OTS_Order 
WHERE Delivery_Time_Min > 120 AND Status = 'Completed';

-- Find orders with 0 or negative amounts
SELECT * FROM OTS_Order
WHERE Amount_NGN <= 0;

SELECT *
FROM OTS_Order;

-- Creating a clean view for power BI
CREATE VIEW Clean_Data AS
SELECT 
    Order_ID,
    Service_Type,
    Order_Date,
    Amount_NGN,
    Status,
    Delivery_Time_Min,
    Payment_Method,
    Customer_Rating,
    -- Adding a helper column for Revenue (only counting Completed orders)
    CASE WHEN Status = 'Completed' THEN Amount_NGN ELSE 0 END AS Realized_Revenue
FROM OTS_Order;