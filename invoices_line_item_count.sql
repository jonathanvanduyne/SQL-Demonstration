-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT InvoiceId, COUNT(*) AS 'Total Line Items'
FROM InvoiceLine
GROUP BY InvoiceId
ORDER BY InvoiceId;