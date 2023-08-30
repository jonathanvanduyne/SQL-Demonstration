-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT il.*, t.Name AS TrackName, ar.Name AS ArtistName
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
ORDER BY il.InvoiceLineId;