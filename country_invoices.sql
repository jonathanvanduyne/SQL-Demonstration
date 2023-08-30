-- Provide a query that shows the total number of invoices per country.
-- HINT: GROUP BY

SELECT billingCountry, COUNT(*) AS total_invoices
FROM invoice
GROUP BY billingCountry;