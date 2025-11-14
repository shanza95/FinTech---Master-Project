# FinTech---Master-Project

### Project Overview: 



### Insights 
Datasets
- Raw Datasets (to be cleaned) can be found [here](Datasets%20to%20be%20cleaned/)
- Cleaned Datasets can be found [here](cleaned%20files%20from%20Python/)
  
Data Cleaning & Analysis
- You can explore the full Python implementation for the data cleaning phase in the [notebook](Python%20Fintech%20Project%20-%20Final.ipynb/), which includes step-by-step code and comments.
- The SQL queries utilized to inspect and perform queries can be found [here](SQL_%20FinTech.sql/)
- Two interactive dashboards can be downloaded [here](https://public.tableau.com/app/profile/shanza.saleem/viz/FinTechTransactionsandUserSpendingDashboard/Dashboard3/) and the more detailed one, [here](https://public.tableau.com/app/profile/shanza.saleem/viz/FinTechTransactionsandUserSpending/FinTechTransactionsUserSpendings/).
  

### Tools & Technologies
| Category               | Tools                            |
| ---------------------- | -------------------------------- |
| Programming & Cleaning | Python (Pandas, NumPy, Datetime) |
| Database Management    | MySQL               |
| Visualization          | Tableau                         |
| Data Storage           | CSV files                        |
| Version Control        | GitHub                     |

## Project Phases 

### Phase 1: Data Cleaning (Python) 

Key Steps:
- Imported datasets using Pandas.
- Identified and corrected invalid timestamps using pd.to_datetime() and error coercion.
- Removed duplicate content entries from three datasets.
- Standardized variables (e.g., “MerchantName” → “Merchant_Name”).
- Handle missing values.
- Created another dataset, named utility_data.csv
- Saved cleaned datasets as merchants.csv, users.csv, and transactions.csv.
- Perform Data Validation and Data Analysis with the usage of two libraries, matplotlib and seaborn, very important for Visualization.
- Connected to MySQL DB
- Imported pymysql library and connected to SQLAlchemy engine to view tables in DB.


### Phase 2: SQL Analysis

    - Retrieve monthly transaction summaries for each user
![Retrieve monthly transaction summaries for each user](SQL%20Query%20Results//Monthly%20Transactions.png/)

This table shows users with the highest transaction activity by month, grouped by category (Merchant, Utility, P2P). Each row lists a user’s total number of transactions and the total amount spent in that month. Most highlighted users completed 2–3 transactions, with total amounts ranging from moderate utility payments to higher-value merchant and P2P transfers. This view helps identify when and where users are most active, making it useful for monitoring spending patterns and category trends across the year.

    - Identify top-performing merchants based on transaction volume
![Identify top-performing merchants based on transaction volume](SQL%20Query%20Results//Top-performing%20Merchants.png/)

The results show the merchants with the highest transaction activity. Merchant 19 ranks first with 43 transactions, followed closely by merchants 12 and 3. Most top merchants fall within the 35–43 transaction range, indicating a strong and fairly consistent level of activity across the leaders. This ranking helps highlight which merchants contribute most to overall transaction volume and may warrant priority in performance monitoring or business strategy.

    - Top Utility Spenders by Average Bill Amount
![Calculate the average amount of utility bill per user](SQL%20Query%20Results//Avg%20Utility%20Bill%20Amount.png/)

This table highlights users with the highest average utility payment amounts across categories such as Gas, Water, and Electricity. Gas payments dominate the top of the list, showing consistently high averages around £193–£199, followed closely by Water and Electricity users with similar spending levels. These results help identify users with higher recurring utility costs and provide insight into which utility types tend to generate larger average payments.


### Phase 3: Visualization

![Dashboard](Dashboard.png/)

     - Maximum & Total Spent 

The data shows clear differences across utility categories. Water has the highest single recorded spend at £199.39, slightly ahead of Gas at £199.27 and Electricity at £195.50. When looking at total expenditure, Electricity leads with £27,400, followed by Gas at £24,200 and Water at £24,366.
In the overall spending summary, Merchant transactions dominate with a maximum spend of £998.91, while P2P reaches £499.30, and Utility-type spending peaks at £199.39.

    - Top 10 Users by Balance History

The top 10 users ranked by balance history are those who maintain high balances even after regular spending. The leading user is User ID 97, registered in April 2023, followed by User ID 210, also from April 2023. The list continues with users such as ID 255 from August 2024, and ends with ID 61, registered in October 2023. These users consistently demonstrate strong balance retention behavior.

    - Spending vs Balance 

The comparison between spending and average balance highlights how much users retain after spending. For example, User 38 spent £1,421 while still maintaining an average balance of £619. User 195 spent £2,191 with an average balance of £443, and User 226 spent £717 while keeping an average balance of £584. Overall, the data suggests that several users continue to maintain substantial balances despite frequent or high spending.

    - Revenue by Type
Revenue patterns show a strong concentration around Merchant activity. The highest recorded revenue occurs in July 2024, reaching £3,105,541.546, primarily driven by Merchant transactions. In contrast, the lowest revenue point appears in April 2025, also within the Merchant category, with a value of £42,787. When compared across Merchant, Utility, and P2P types, Merchant consistently dominates both the peaks and the troughs of revenue performance.

    - Top Spending Period 

Spending activity peaks significantly in July 2024, reaching £56,723, making it the highest spending month in the dataset. This is followed closely by May 2024 with £54,147, and then October 2024. Toward the end of the timeline, spending declines sharply, with June 2025 and August 2025 representing the lowest levels, around £381.

    - Top 10 Customers by Amount 

The highest-spending customers show a clear concentration of spending power. User 383 tops the list with a total of £4,740 spent, followed by User 315 with £3,941. The spending amounts gradually decrease across the list, with User 197 closing the top 10 at £3,032. This distribution highlights a small subset of highly active spenders.

    - Spending Trends Over Months

Monthly spending trends show a strong spike in July 2024, where spending reaches £38,059, primarily driven by Merchant transactions. In contrast, the lowest spending event occurs in June 2025, with only £172, associated with Utility activity. The pattern reveals significant seasonal or behavioral fluctuations in spending habits over time.
 
    - Revenue by Utility Type
Revenue patterns show a strong concentration around Electricity activity. The highest recorded revenue occurs in March 2024, reaching £4,782,492.678, primarily driven by Electricity transactions. In contrast, the lowest revenue point appears in June 2025, also within the Electricity category, with a value of £8,282,273. When compared across three types of Utility, Electricity, Gas, and Water types, Electricity consistently dominates both the peaks and the troughs of revenue performance.

### Conclusion and Business Recommendations

Conclusion:

The data reveals a clear pattern in transaction activity and revenue across categories and user segments. Merchants lead in transaction volume, indicating strong engagement and opportunities for growth in commerce-related services. Utility payments show varied behavior: while Electricity generates the highest total revenue, Gas has the highest average bill per user, suggesting different usage and billing dynamics within the utilities sector. User transactions are consistently clustered around 2–3 monthly transactions, highlighting steady engagement across categories.

Recommendations:

1. Focus Merchant Growth Initiatives on Top Performers: Prioritize support and targeted campaigns for the highest-transaction merchants (e.g., Recipient_ID 19, 12, 3), as they drive significant volume and can influence broader network activity.

2. Enhance Utility Customer Engagement by Category:

- For Electricity, which delivers the most revenue, explore loyalty programs or flexible payment plans to retain and upsell customers.

- For Gas, consider personalized offers or alerts, since users have higher average bills and may be sensitive to pricing changes.

3. Leverage Spending Patterns for Cross-Selling: Use insights from consistent transaction counts and spending amounts to recommend relevant financial products or services (e.g., budgeting tools, payment scheduling) tailored by category.

4. Monitor Category Trends Over Time: Regularly update dashboards and reports to track shifts in transaction volume and revenue by merchant and utility types to quickly respond to emerging trends or anomalies.
