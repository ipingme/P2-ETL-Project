# ETL Project Final Report

1. Draw out the structure
2. Create your database schema (MySQL Workbench)
3. Clean the data in Pandas (Jupyter Notebook)
4. Connect to the database in MySQL (Jupyter Notebook)
5. Load the data frame to MySQL (Jupyter Notebook)
6. Query & Join MySQL data (MySQL Workbench)

## Extract: your original data sources and how the data was formatted (CSV, JSON, MySQL, etc).
[New York Stock Exchange | Kaggle](https://www.kaggle.com/dgawlik/nyse)
+ nyse-securities.csv - includes ticker, security name and industry information
+ nyse-fundamentals.csv - includes ticker and financial data

## Transform: what data cleaning or transformation was required.
For each of the tables, I selected only the columns that I needed for my tables. Column names were renamed to snake case to match the MySQL database. 

### Table 1 - company_securities
- nyse-securities.ticker (Joined)
- nyse-securities.security_name
- nyse-securities.gics_sector
- nyse-securities.gics_sub_industry

### Table 2 - company_fundamentals
- nyse-fundamentals.ticker symbol (Joined)
- nyse-fundamentals.year (Converted date to year only)
- nyse-fundamentals.accounts_payable
- nyse-fundamentals.accounts_receivable
- nyse-fundamentals.cost_of_rev
- nyse-fundamentals.inventory
- nyse-fundamentals.net_income
- nyse-fundamentals.sga
- nyse-fundamentals.total_revenue 
- nyse-fundamentals.sga_percentage (Added column calculation of sga/total_revenue to get percentage)

## Load: the final database, tables/collections, and why this was chosen.
The MySQL database "company_db" was loaded from the Jupyter Notebook with the 2 tables (company_securities and company_fundamentals) and later joined by the ticker name in MySQL. 

These data files were chosen to be able to do further analysis on how much each industry is spending on their Marketing. The SG&A percentage provides a view of how much of their total revenue is allocated to these expenses. 
