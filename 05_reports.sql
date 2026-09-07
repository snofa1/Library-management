'''most borrowed books '''
SELECT
    b.Title,
    COUNT(i.Issue_ID) AS Borrow_Count
FROM Books b
JOIN Issue_Records i
ON b.Book_ID = i.Book_ID
GROUP BY b.Title
ORDER BY Borrow_Count DESC;

'''Most active members'''
SELECT
    m.Member_Name,
    COUNT(i.Issue_ID) AS Books_Borrowed
FROM Members m
JOIN Issue_Records i
ON m.Member_ID = i.Member_ID
GROUP BY m.Member_Name
ORDER BY Books_Borrowed DESC;

'''Category-wise book count'''
SELECT
    c.Category_Name,
    COUNT(b.Book_ID) AS Book_Count
FROM Categories c
LEFT JOIN Books b
ON c.Category_ID = b.Category_ID
GROUP BY c.Category_Name
ORDER BY Book_Count DESC;

'''Overdue books'''
SELECT
    m.Member_Name,
    b.Title,
    i.Due_Date
FROM Issue_Records i
JOIN Members m
ON i.Member_ID = m.Member_ID
JOIN Books b
ON i.Book_ID = b.Book_ID
WHERE i.Return_Date IS NULL
AND SYSDATE > i.Due_Date;

'''Members who paid fines'''
SELECT
    m.Member_Name,
    b.Title,
    i.Fine
FROM Issue_Records i
JOIN Members m
ON i.Member_ID = m.Member_ID
JOIN Books b
ON i.Book_ID = b.Book_ID
WHERE i.Fine > 0;

'''Total fine collected'''
SELECT SUM(Fine) AS Total_Fine
FROM Issue_Records;

'''Books never borrowed'''
SELECT
    b.Book_ID,
    b.Title
FROM Books b
LEFT JOIN Issue_Records i
ON b.Book_ID = i.Book_ID
WHERE i.Book_ID IS NULL;

'''Average book price'''
SELECT
    ROUND(AVG(Price), 2) AS Average_Price
FROM Books;

'''Books with low availability'''
SELECT
    Title,
    Total_Copies,
    Available_Copies
FROM Books
WHERE Available_Copies <= 2;