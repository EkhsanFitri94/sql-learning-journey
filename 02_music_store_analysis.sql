1. How many tracks are in each invoice?

-- Answer to Question 1
-- Goal: Count the number of tracks for each invoice.
SELECT
    InvoiceId,
    COUNT(InvoiceLineId) AS NumberOfTracks
FROM
    Invoice_Items
GROUP BY
    InvoiceId
ORDER BY
    NumberOfTracks DESC;

2. What is the average total spend per customer?

-- Answer to Question 2
-- Goal: Calculate the average total spend for each customer.
SELECT
    CustomerId,
    AVG(Total) AS AverageSpend
FROM
    Invoices
GROUP BY
    CustomerId
ORDER BY
    AverageSpend DESC;

3. List all albums and the name of their artist.

-- Answer to Question 3
-- Goal: Combine Albums and Artists to see which artist made which album.
SELECT
    a.Title AS AlbumTitle,
    ar.Name AS ArtistName
FROM
    Albums AS a
INNER JOIN
    Artists AS ar ON a.ArtistId = ar.ArtistId;

4. Find the artist who has the most albums in our store.

-- Answer to Question 4
-- Goal: Find the artist with the highest number of albums.
SELECT
    ar.Name AS ArtistName,
    COUNT(a.AlbumId) AS NumberOfAlbums
FROM
    Artists AS ar
INNER JOIN
    Albums AS a ON ar.ArtistId = a.ArtistId
GROUP BY
    ar.ArtistId, ar.Name
ORDER BY
    NumberOfAlbums DESC
LIMIT 1; -- We only want the top result

5. (Challenge) List all customers and, if they have an invoice, show the date of their first invoice.

-- Answer to Question 5 (Challenge)
-- Goal: Show every customer and the date of their first invoice, if any.
SELECT
    c.FirstName,
    c.LastName,
    MIN(i.InvoiceDate) AS FirstInvoiceDate
FROM
    Customers AS c
LEFT JOIN
    Invoices AS i ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId, c.FirstName, c.LastName
ORDER BY
    c.LastName, c.FirstName;
