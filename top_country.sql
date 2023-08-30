-- Which country's customers spent the most?
-- HINT: Use the MAX function on a subquery.

SELECT
    c.country,
    SUM(i.total) AS total
FROM customer c
INNER JOIN invoice i ON i.customerId = c.customerId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
