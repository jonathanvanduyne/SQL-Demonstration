-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT InvoiceId, InvoiceDate, BillingCountry, firstName + LastName AS FullName 
FROM Invoice 
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
WHERE Customer.Country = "Brazil"