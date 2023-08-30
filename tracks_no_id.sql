-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT album.title AS "Album Name", mediaType.name AS "Media Type", genre.name AS "Genre"
FROM track
JOIN album ON track.albumId = album.albumId
JOIN mediaType ON track.mediaTypeId = mediaType.mediaTypeId
JOIN genre ON track.genreId = genre.genreId
ORDER BY album.title;
