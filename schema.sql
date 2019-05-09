-- Create and use company_db
CREATE DATABASE company_db;
USE company_db;

-- Create tables for raw data to be loaded into
CREATE TABLE company_securities (
  id INT PRIMARY KEY AUTO_INCREMENT,
  ticker TEXT,
  security_name TEXT,
  gics_sector TEXT,
  gics_sub_industry TEXT
);

CREATE TABLE company_fundamentals (
  id INT PRIMARY KEY AUTO_INCREMENT,
  ticker TEXT,
  year TEXT,
  accounts_payable DECIMAL(15,2),
  accounts_receivable DECIMAL(15,2),
  cost_of_rev DECIMAL(15,2),
  inventory DECIMAL(15,2),
  net_income DECIMAL(15,2),
  sga DECIMAL(15,2),
  total_revenue DECIMAL(15,2),
  sga_percentage DECIMAL(5,2)
);
