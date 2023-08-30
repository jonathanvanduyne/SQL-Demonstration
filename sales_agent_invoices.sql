-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT (e.FirstName || " " || e.LastName) AS FullName, i.InvoiceId
FROM employee e
JOIN customer c ON e.EmployeeId = c.SupportRepId
JOIN invoice i ON c.CustomerId = i.CustomerId;