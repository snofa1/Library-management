SELECT
    m.Member_Name,
    b.Title,
    i.Issue_Date,
    i.Due_Date,
    i.Return_Date
FROM Issue_Records i
JOIN Members m
ON i.Member_ID = m.Member_ID
JOIN Books b
ON i.Book_ID = b.Book_ID;

SELECT
    b.Title,
    a.Author_Name,
    a.Country
FROM Books b
JOIN Authors a
ON b.Author_ID = a.Author_ID;

SELECT
    b.Title,
    c.Category_Name
FROM Books b
JOIN Categories c
ON b.Category_ID = c.Category_ID;

SELECT
    b.Book_ID,
    b.Title,
    a.Author_Name,
    c.Category_Name,
    b.Publisher,
    b.Price,
    b.Total_Copies,
    b.Available_Copies
FROM Books b
JOIN Authors a
ON b.Author_ID = a.Author_ID
JOIN Categories c
ON b.Category_ID = c.Category_ID;

