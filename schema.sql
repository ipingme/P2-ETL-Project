-- Create and use company_db
CREATE DATABASE company_db;
USE company_db;

-- Create tables for raw data to be loaded into
CREATE TABLE company_securities (
  id INT PRIMARY KEY,
  ticker TEXT,
  security_name TEXT,
  gics_sector TEXT,
  gics_sub_industry TEXT
);

CREATE TABLE company_fundamentals (
  id INT PRIMARY KEY,
  ticker TEXT,
  period DATETIME,
  budget INT
);

CREATE TABLE tweets (
  id INT PRIMARY KEY,
  ticker TEXT,
  timestamp DATETIME,
  source TEXT
);

