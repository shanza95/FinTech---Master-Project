# FinTech---Master-Project

### Project Overview: 



### Insights 
Datasets
- Raw Datasets (to be cleaned) can be found [here](Datasets%20to%20be%20cleaned/)
- Cleaned Datasets can be found [here](cleaned%20files%20from%20Python/)
  
Data Cleaning & Analysis
- You can explore the full Python implementation for the data cleaning phase in the [notebook](Python%20Fintech%20Project%20-%20Final.ipynb/), which includes step-by-step code and comments.
- The SQL queries utilized to inspect and perform queries can be found [here](SQL_FinTech.sql/)
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
    - Identify top-performing merchants based on transaction volume
    - Calculate the average utility bill amount per user.
