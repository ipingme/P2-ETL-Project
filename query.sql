-- Query to check successful load
SELECT * FROM company_securities;

SELECT * FROM company_fundamentals;

-- Join tables on ticker
SELECT company_securities.id, company_securities.ticker, company_securities.security_name, 
        company_securities.gics_sector, company_securities.gics_sub_industry,
        company_fundamentals.year, company_fundamentals.accounts_payable, company_fundamentals.accounts_receivable, company_fundamentals.cost_of_rev,
        company_fundamentals.inventory, company_fundamentals.net_income, company_fundamentals.total_revenue, company_fundamentals.sga,
        company_fundamentals.sga_percentage
FROM company_securities
JOIN company_fundamentals ON company_securities.ticker = company_fundamentals.ticker;

