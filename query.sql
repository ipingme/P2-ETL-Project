-- Query to check successful load
SELECT * FROM company_securities;

SELECT * FROM company_fundamentals;

SELECT * FROM tweets;

-- Join tables on ticker
SELECT company_securities.id, company_securities.ticker, company_securities.security_name, 
        company_securities.gics_sector, company_securities.gics_sub_industry,
        company_fundamentals.period, company_fundamentals.budget, tweets.timestamp, tweets.source
FROM company_securities
JOIN company_fundamentals ON company_securities.ticker = company_fundamentals.ticker
JOIN tweets ON company_fundamentals.ticker = tweets.ticker;

