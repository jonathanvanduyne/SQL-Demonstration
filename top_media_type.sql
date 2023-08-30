-- Provide a query that shows the most purchased Media Type.

SELECT 
    MediaTypeName AS MostPurchasedMediaType,
    MAX(Purchases) AS NumberOfPurchases
FROM(
    SELECT 
        Mt.Name AS MediaTypeName,
        SUM(IL.Quantity) AS Purchases
    FROM InvoiceLine IL 
    JOIN Track T ON T.TrackId = IL.TrackId
    JOIN MediaType Mt ON T.MediaTypeId = Mt.MediaTypeId
    GROUP BY MediaTypeName
    ORDER BY Purchases DESC
);