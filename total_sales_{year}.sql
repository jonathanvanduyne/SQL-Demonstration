-- What are the respective total sales for each of those years?
-- HINT: SUM

SELECT SUM(Total) FROM invoice WHERE InvoiceDate like '%2009%' OR InvoiceDate = '%2011%';