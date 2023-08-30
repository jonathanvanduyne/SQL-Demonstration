-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT il.InvoiceLineId, t.Name
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
ORDER BY il.InvoiceLineId;