SELECT * FROM Authors;
SELECT * FROM Categories;
SELECT * FROM Books;
SELECT * FROM Members;
SELECT Book_ID, Title, Total_Copies, Available_Copies
FROM Books
WHERE Available_Copies > 0;
SELECT Title, Price
FROM Books
WHERE Price > 500;
SELECT *
FROM Members
WHERE Member_Name LIKE '%Kumar%';