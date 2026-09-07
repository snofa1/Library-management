# 📚 Library Management System | Oracle SQL

## 📌 Project Overview

The **Library Management System** is a relational database project developed using **Oracle SQL**.

The project manages information about books, authors, categories, library members, and book issue/return records. It demonstrates database design, relationships, constraints, SQL queries, joins, aggregate functions, and report generation.

---

## 🎯 Objectives

* Manage library books and their availability
* Store author and category information
* Maintain member records
* Track book issue and return details
* Identify currently issued and overdue books
* Calculate library fines
* Generate useful reports using SQL

---

## 🛠️ Technologies Used

* **Oracle SQL**
* **SQL*Plus / Oracle Database**
* **VS Code**
* **Git & GitHub**

---

## 🗄️ Database Tables

The database contains five main tables:

### 1. Authors

Stores information about book authors.

| Column      | Description        |
| ----------- | ------------------ |
| Author_ID   | Unique author ID   |
| Author_Name | Name of the author |
| Country     | Author's country   |

### 2. Categories

Stores book categories.

| Column        | Description        |
| ------------- | ------------------ |
| Category_ID   | Unique category ID |
| Category_Name | Category name      |

### 3. Books

Stores information about books.

| Column           | Description                |
| ---------------- | -------------------------- |
| Book_ID          | Unique book ID             |
| Title            | Book title                 |
| Author_ID        | Reference to Authors       |
| Category_ID      | Reference to Categories    |
| Publisher        | Publisher name             |
| Price            | Book price                 |
| Total_Copies     | Total number of copies     |
| Available_Copies | Currently available copies |

### 4. Members

Stores library member information.

| Column      | Description         |
| ----------- | ------------------- |
| Member_ID   | Unique member ID    |
| Member_Name | Member name         |
| Email       | Member email        |
| Phone       | Member phone number |
| Join_Date   | Membership date     |

### 5. Issue_Records

Stores book issue and return information.

| Column      | Description              |
| ----------- | ------------------------ |
| Issue_ID    | Unique issue ID          |
| Book_ID     | Reference to Books       |
| Member_ID   | Reference to Members     |
| Issue_Date  | Date the book was issued |
| Due_Date    | Expected return date     |
| Return_Date | Actual return date       |
| Fine        | Fine amount              |

---

## 🔗 Database Relationships

The database uses **Primary Keys** and **Foreign Keys** to establish relationships.

```text
Authors
   │
   └──────< Books >────── Categories
                │
                │
                ▼
          Issue_Records
                ▲
                │
             Members
```

### Relationships

* One author can have multiple books.
* One category can contain multiple books.
* One member can issue multiple books.
* One book can appear in multiple issue records.

---

## 🔍 SQL Concepts Used

This project demonstrates:

* `CREATE TABLE`
* `INSERT`
* `SELECT`
* `WHERE`
* `LIKE`
* `ORDER BY`
* `JOIN`
* `LEFT JOIN`
* `GROUP BY`
* `COUNT()`
* `SUM()`
* `AVG()`
* `CASE`
* Primary Keys
* Foreign Keys
* `NOT NULL`
* `UNIQUE`
* `CHECK`
* Default values
* Date functions
* Fine calculation

---

## 📊 Reports Generated

The project includes SQL reports for:

### 📖 Most Borrowed Books

Identifies books with the highest number of borrow records.

### 👤 Most Active Members

Finds members who have borrowed the most books.

### 📚 Category-wise Book Count

Displays the number of books available in each category.

### 📕 Currently Issued Books

Displays books that have not yet been returned.

### ⚠️ Overdue Books

Identifies books whose due date has passed and which have not been returned.

### 💰 Members with Fines

Displays members who have incurred fines.

### 💵 Total Fine

Calculates the total fine amount recorded in the system.

### 📚 Never Borrowed Books

Identifies books that have never been issued.

### 💲 Average Book Price

Calculates the average price of books.

### 📉 Low Availability Books

Identifies books with low available copies.

---

## 💰 Fine Calculation

The project calculates fines for overdue books.

The implemented logic uses:

```text
Fine = Number of overdue days × ₹5
```

For example:

```text
Overdue days = 5
Fine = 5 × ₹5
Fine = ₹25
```

The project also uses `TRUNC()` when calculating fines based on the current date to avoid fractional-day calculations.

---

## 📁 Project Structure

```text
Library-management/
│
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_basic_queries.sql
├── 04_join_queries.sql
├── 05_reports.sql
├── 06_fine_calculation.sql
└── README.md
```

---

## ▶️ How to Run the Project

### Step 1: Install / Access Oracle Database

Make sure you have access to an Oracle database through **SQL*Plus** or **Oracle SQL Developer**.

### Step 2: Run the table creation script

```sql
@01_create_tables.sql
```

### Step 3: Insert the sample data

```sql
@02_insert_data.sql
```

### Step 4: Run basic queries

```sql
@03_basic_queries.sql
```

### Step 5: Run JOIN queries

```sql
@04_join_queries.sql
```

### Step 6: Run reports

```sql
@05_reports.sql
```

### Step 7: Run fine calculation

```sql
@06_fine_calculation.sql
```

---

## 💡 Key Learning Outcomes

Through this project, I gained practical experience in:

* Relational database design
* Creating normalized database tables
* Defining primary and foreign key relationships
* Applying database constraints
* Writing SQL queries
* Performing table joins
* Using aggregate functions
* Generating business reports
* Working with dates in Oracle SQL
* Implementing conditional logic using `CASE`
* Managing SQL scripts using Git and GitHub

---

## 🚀 Future Improvements

The project can be extended by adding:

* Stored procedures
* Functions
* Triggers
* User authentication
* Book reservation system
* Automatic fine updates
* Member borrowing limits
* PL/SQL automation
* Web-based frontend

---



