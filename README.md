# ETL Project Final Report

1. Draw out the structure
2. Create your database schema (MySQL Workbench)
3. Clean the data in Pandas (Jupyter Notebook)
4. Connect to the database in MySQL (Jupyter Notebook)
5. Load the data frame to MySQL (Jupyter Notebook)
6. Query & Join MySQL data (MySQL Workbench)

## Extract: your original data sources and how the data was formatted (CSV, JSON, MySQL, etc).
[New York Stock Exchange | Kaggle](https://www.kaggle.com/dgawlik/nyse)
nyse-securities.Ticker symbol (Joined)
nyse-securities.Security
nyse-securities.GICS Sector
nyse-securities.GICS Sub Industry

nyse-fundamentals.Ticker symbol (Joined)
nyse-fundamentals.Period ending
nyse-fundamentals.budget/revenue?

[Financial Tweets | Kaggle](https://www.kaggle.com/davidwallach/financial-tweets)
stockerbot-export.timestamp
stockerbot-export.source
stockerbot-export.symbols (Joined)

## Transform: what data cleaning or transformation was required.

## Load: the final database, tables/collections, and why this was chosen.
