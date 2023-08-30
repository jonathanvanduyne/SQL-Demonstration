-- How many Invoices were there in 2009 and 2011?
-- HINT: COUNT

SELECT COUNT(*) FROM invoice WHERE InvoiceDate LIKE '%2009%' OR InvoiceDate LIKE '%2011%';