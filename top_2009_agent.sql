-- Which sales agent made the most in sales in 2009?
-- HINT: Use the MAX function on a subquery.

-- SELECT
--     e.firstName || " " || e.lastName AS fullName, MAX(Total) AS max_sales
-- FROM employee e
-- JOIN customer c ON e.employeeId = c.SupportRepId
-- JOIN invoice i ON c.customerId = i.customerId 
-- GROUP BY e.employeeId
-- ORDER BY max_sales DESC
-- LIMIT 1;

-- SELECT e.firstName, e.lastName, SUM(i.total) AS total 
-- FROM employee e
-- INNER JOIn customer c
-- ON e.employeeID = c.SupportRepId
-- INNER JOIN invoice i
-- ON c.customerID = i.customerID
-- WHERE i.invoiceDate LIKE '2009%'
-- GROUP BY e.employeeID
-- ORDER BY total DESC
-- LIMIT 1;


-- SELECT
--     e.firstName || ' ' || e.lastName AS fullName,
--     MAX(total) AS maxSales
-- FROM (
--     SELECT
--         e.employeeId,
--         e.firstName,
--         e.lastName,
--         SUM(i.total) AS totalSales
--     FROM Employee e
--     INNER JOIN Customer c ON e.employeeId = c.supportRepId
--     INNER JOIN Invoice i ON c.customerId = i.customerId
--     WHERE i.invoiceDate LIKE '2009%'
--     GROUP BY e.employeeId
-- ) AS salesByAgent
-- GROUP BY salesByAgent.employeeId
-- ORDER BY maxSales DESC
-- LIMIT 1;


SELECT SalesRep, MAX(TotalSales) FROM (
    SELECT 
        E.FirstName || ' ' || E.LastName AS SalesRep,
        SUM(I.Total) AS TotalSales
    FROM Employee E
    LEFT JOIN CUSTOMER C ON E.EmployeeId = C.SupportRepId
    LEFT JOIN INVOICE I ON C.CustomerId = I.CustomerId
    WHERE E.Title LIKE '%Sales%' AND Title LIKE '%Agent%'
    AND I.InvoiceDate LIKE '2009%'
    GROUP BY SalesRep
);
