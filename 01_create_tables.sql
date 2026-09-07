CREATE TABLE Authors (
    Author_ID NUMBER PRIMARY KEY,
    Author_Name VARCHAR2(100) NOT NULL,
    Country VARCHAR2(50)
);

CREATE TABLE Categories (
    Category_ID NUMBER PRIMARY KEY,
    Category_Name VARCHAR2(100) NOT NULL
);

CREATE TABLE Books (
    Book_ID NUMBER PRIMARY KEY,
    Title VARCHAR2(150) NOT NULL,
    Author_ID NUMBER,
    Category_ID NUMBER,
    Publisher VARCHAR2(100),
    Price NUMBER(8,2),
    Total_Copies NUMBER DEFAULT 1,
    Available_Copies NUMBER DEFAULT 1,

    CONSTRAINT fk_book_author
        FOREIGN KEY (Author_ID)
        REFERENCES Authors(Author_ID),

    CONSTRAINT fk_book_category
        FOREIGN KEY (Category_ID)
        REFERENCES Categories(Category_ID),

    CONSTRAINT chk_book_price
        CHECK (Price >= 0),

    CONSTRAINT chk_copies
        CHECK (Available_Copies >= 0
               AND Available_Copies <= Total_Copies)
);

CREATE TABLE Members (
    Member_ID NUMBER PRIMARY KEY,
    Member_Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Phone VARCHAR2(15),
    Join_Date DATE DEFAULT SYSDATE
);

CREATE TABLE Issue_Records (
    Issue_ID NUMBER PRIMARY KEY,
    Book_ID NUMBER NOT NULL,
    Member_ID NUMBER NOT NULL,
    Issue_Date DATE DEFAULT SYSDATE,
    Due_Date DATE NOT NULL,
    Return_Date DATE,
    Fine NUMBER(8,2) DEFAULT 0,

    CONSTRAINT fk_issue_book
        FOREIGN KEY (Book_ID)
        REFERENCES Books(Book_ID),

    CONSTRAINT fk_issue_member
        FOREIGN KEY (Member_ID)
        REFERENCES Members(Member_ID),

    CONSTRAINT chk_fine
        CHECK (Fine >= 0)
);