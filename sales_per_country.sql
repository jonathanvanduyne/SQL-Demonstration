-- Provide a query that shows the total sales per country.

SELECT c.country, SUM(i.total) AS totalSales
FROM customer c
JOIN invoice i ON c.customerId = i.customerId
GROUP BY c.country
ORDER BY totalSales DESC;