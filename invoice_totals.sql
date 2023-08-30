-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT (c.FirstName|| " " || c.LastName) AS FullName, c.Country, (e.FirstName || " " || e.LastName) AS SalesAgent, i.Total
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN Employee e ON c.SupportRepId = e.EmployeeId
ORDER BY i.Total DESC;