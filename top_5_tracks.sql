-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.Name, COUNT(il.TrackId) AS 'Number of Purchases'
FROM track t
JOIN invoiceLine il ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY COUNT(il.TrackId) DESC
LIMIT 5;