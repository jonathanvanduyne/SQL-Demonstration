-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
-- HINT: GROUP BY

SELECT DISTINCT InvoiceId, COUNT(InvoiceLineId) AS LineItems
FROM InvoiceLine
GROUP BY InvoiceId
ORDER BY InvoiceId;
