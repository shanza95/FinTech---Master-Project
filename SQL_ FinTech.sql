
# MASTER PROJECT FinTech

create database FinTech;
use FinTech;


## Retrieve monthly transaction summaries for each user

SELECT 
    User_ID, Type as Category,
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    COUNT(*) AS Transaction_Count,
    SUM(Amount) AS Total_Amount
FROM transactions
GROUP BY User_ID, Category, Month
ORDER BY Transaction_Count DESC
LIMIT 10;

## Identify top-performing merchants based on transaction volume
SELECT Recipient_ID, COUNT(Transaction_ID) as Transaction_Count
FROM transactions WHERE Type = 'Merchant'
GROUP BY Recipient_ID
ORDER BY Transaction_Count DESC
LIMIT 10;

## Calculate the average utility bill amount per user.
SELECT User_ID, Utility_Type, avg(Amount) as avg_amount
FROM utility
GROUP BY User_ID, Utility_Type
ORDER BY avg_amount DESC
LIMIT 10;
