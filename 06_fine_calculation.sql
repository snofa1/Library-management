SELECT
    m.Member_Name,
    b.Title,
    i.Due_Date,
    CASE
        WHEN i.Return_Date IS NULL
             AND SYSDATE > i.Due_Date
        THEN TRUNC(SYSDATE - i.Due_Date) * 5
        WHEN i.Return_Date > i.Due_Date
        THEN (i.Return_Date - i.Due_Date) * 5
        ELSE 0
    END AS Fine
FROM Issue_Records i
JOIN Members m
ON i.Member_ID = m.Member_ID
JOIN Books b
ON i.Book_ID = b.Book_ID;