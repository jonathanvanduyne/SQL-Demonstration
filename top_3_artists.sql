-- Provide a query that shows the top 3 best selling artists.

SELECT a.name, SUM(il.quantity) AS total_sold
FROM artist a
JOIN album al ON al.artistId = a.artistId
JOIN track t ON t.albumId = al.albumId
JOIN invoiceLine il ON il.trackId = t.trackId
GROUP BY a.name
ORDER BY total_sold DESC
LIMIT 3;