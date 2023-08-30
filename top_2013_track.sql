-- Provide a query that shows the most purchased track(s) of 2013.

SELECT 
    IL.TrackId,
    T.Name,
    SUM(IL.Quantity) AS NumberOfPurchases,
    I.InvoiceDate
FROM InvoiceLine IL
JOIN Track T ON IL.TrackId = T.TrackId
JOIN Invoice I ON I.InvoiceId = IL.InvoiceId
WHERE I.InvoiceDate LIKE '2013%'
GROUP BY IL.TrackId
ORDER BY NumberOfPurchases DESC;