# Core SQL Terminology

## 1. Overview

**Category:** SQL and Relational Database Fundamentals  
**Difficulty:** Beginner  
**Status:** Not Started / In Progress / Completed

## 2. Learning Checklist

- [ ] Understand what SQL is and what a relational database is.
- [ ] Understand the difference between a DBMS and an RDBMS.
- [ ] Explain tables, rows/records, columns/fields, schemas, and database objects.
- [ ] Recognize common data types: `INTEGER`, `DECIMAL`, `VARCHAR`, `TEXT`, `DATE`, `TIMESTAMP`, and `BOOLEAN`.
- [ ] Understand the difference between `NULL`, zero, and an empty string.
- [ ] Understand primary keys and foreign keys.
- [ ] Recognize one-to-one, one-to-many, and many-to-many relationships.
- [ ] Understand what constraints do and why databases use them.
- [ ] Recognize the broad SQL command categories: DDL, DML, queries (often called DQL), and transaction control.

## 3. Definitions

### 3.1 SQL and Relational Databases

**SQL (Structured Query Language)**

**Definition:**  
SQL is a programming language used for storing and processing information in a relational database.

**Purpose:**  
SQL allows both technical and non technical users to query, manipulate, and transform data. It's simplicity allows for safe and scalable storage capabilities.

**Relational Database**

**Definition:**  
A relational database is a digital data storage system that organizes structured information into rows and columns across multiple tables. 

**Purpose:**  
Users interact with the databased using SQL to query, insert, update, and join data across the tables. The tables are connected using primary and foreign keys. Relational databases are maintained by an RDBMS and enforce ACID Transactions to ensure reliability and error-free transaction processing.


### 3.2 DBMS vs. RDBMS

**DBMS (Database Management System)**

**Definition:**  
A Database Management System (DBMS) is software that lets you create, store, manage, and retrieve data in an organized way. It holds data in structured formats (tables, documents, or key-value pairs) and uses specialized language (e.g. SQL) to insert, update, delete, and search for data. It allows users to read and write data simultaneously without conflict, manages security and access control, and creates automatic snapshots and restores data is a system failure happens.

Common types include:
• Relational DBMS (RDBMS): Organizes data into rows and columns inside related tables. Examples include MySQL, PostgreSQL, and Microsoft SQL Server.
• NoSQL DBMS: Built for unstructured or semi-structured data, using formats like documents or graphs. Examples include MongoDB and Cassandra.
• Object-Oriented DBMS: Stores data as complex objects similar to object-oriented programming models.

**RDBMS (Relational Database Management System)**

**Definition:**  
Longhand called a Relational Database Management System, RDBMS is the software used to maintain, create, and administer a relational database. Popular examples include MySQL, PostgreSQL, and Oracle Database.

**Key Difference:**  
The core difference between a DBMS (Database Management System) and an RDBMS (Relational Database Management System) is how data is structured and linked. 

While a DBMS is a broad umbrella term for any software that manages databases by storing data as flat files or hierarchies, an RDBMS is an advanced, specific type of DBMS that stores data strictly in interconnected tables (rows and columns) using relationships.

Essentially, every RDBMS is a DBMS, but not every DBMS is an RDBMS.

### 3.3 Database Structures

**Table**

**Definition:**  
The fundamental building block of an SQL database. Each table focuses on a single entity or subject (e.g., Users, Products, Orders)

**Row / Record(Tuple)**

**Definition:**  
The horizontal components of a table. Each row represents a single, unique instance or observation of data within that table

**Column / Field**

**Definition:**  
The vertical components of a table. Each column represents a specific property of the entity and is restricted to a strict Data Type (such as INT, VARCHAR, BOOLEAN, or DATETIME)

**Schema**

**Definition:**  
A SQL schema is the structural blueprint of a database that defines the organization, tables, fields, relationships, and boundaries of the dataset

**Database Object**

**Definition:**  
A SQL database object is a built-in, named structure within a database management system used to store, manage, protect, or reference data.

Unlike raw records or data rows, an object is a structural blueprint created and modified using Data Definition Language (DDL) SQL commands such as CREATE, ALTER, and DROP. 

Think of the database as a digital warehouse: the raw data is the inventory, while the database objects are the shelves, security systems, automated sorting belts, and catalog books that keep everything organized and running smoothly

### 3.4 Common Data Types

For each data type, explain what kind of value it stores and provide an example.

| Data Type | Definition / Purpose | Example |
|---|---|---|
| `INTEGER` | [Whole numbers] | 4, 42, -7, 0 |
| `DECIMAL` | [Numbers with decimal precision] | 123.45, -999.99, 5.00, 0.12 |
| `VARCHAR` | [Variable-length text] | JaneDoe, jane.doe@example.com, Wikipedia.org, Fish123! |
| `TEXT` | [Text values (cannot be used for math] | Alice, California, +1-555-0199 |
| `DATE` | [Calendar dates] | ISO 8601 standard format: YYYY-MM-DD, Other common string formats: MM/DD/YYYY, DD-Mon-YYYY  |
| `DATETIME/TIMESTAMP` | [Date and time values] | 15:32:00 (TIME Only), 2026-10-14 15:32:00 |
| `BOOLEAN` | [True/false values] | TRUE, FALSE, and UNKNOWN (represented by NULL), 0, 1 |

### 3.5 NULL, Zero, and Empty Strings

**NULL**

Definition: Represents unknown, missing, or unprovided data.

Analogy: A box that hasn't arrived yet; nobody knows what's inside.

Data Type: Can apply to columns of different data types when NULL values are allowed.

SQL Syntax Check: Use IS NULL to find missing values and IS NOT NULL to find values that aren't missing.

**Zero (`0`)**

Definition: A precise numeric value representing a quantity of zero.

Analogy: An empty box clearly marked "0 items."

Data Type: Numeric types, such as INTEGER, DECIMAL, and FLOAT.

SQL Syntax Check: Use = 0 to find records where a numeric column equals zero.

**Empty String (`''`)**

Definition: A text value that exists but contains zero characters.

Analogy: An open, empty envelope meant for text.

Data Type: Character and string types, such as VARCHAR, CHAR, and TEXT.

SQL Syntax Check: Use = '' to find records where a text column contains an empty string.

**Key Difference:**  
NULL represents missing or unknown data, 0 is an actual numeric value representing zero, and '' is a text value containing no characters. They are not interchangeable because each represents a different meaning and is checked differently in SQL. For example, IS NULL checks for missing values, = 0 checks for a numeric value of zero, and = '' checks for an empty text value.

### 3.6 Primary Keys and Foreign Keys

**Primary Key (PK)**

Definition: A column or combination of columns that uniquely identifies each row in a table. A primary key cannot contain NULL values or duplicate values.

**Foreign Key (FK)**

Definition: A column or combination of columns that links records in one table to records in another table, typically by referencing that table’s primary key. It helps maintain referential integrity by ensuring that referenced records exist.

**Key Difference:**  
A primary key uniquely identifies each row within its own table, while a foreign key connects a row in one table to a related record in another table. Primary keys prevent duplicate identifiers and NULL values, whereas foreign keys help maintain referential integrity by ensuring that referenced records exist.

### 3.7 Relationships

**One-to-One**

**Definition:**  
A row in Table A matches exactly one row in Table B, and vice versa. Users & User Profiles: A user has one profile; a profile belongs to only one user.

**One-to-Many**

**Definition:**  
A row in Table A can match many rows in Table B, but a row in Table B matches only one in Table A. A customer can place many orders, but each order belongs to one customer.


**Many-to-Many**

**Definition:**  
Multiple rows in Table A can relate to multiple rows in Table B. Students & Courses: A student registers for multiple courses; a course contains multiple students.

### 3.8 Constraints

**Definition:**  
A database constraint is a predefined rule applied to a database table column (or group of columns) to enforce data integrity, accuracy, and reliability.


**Purpose:**  
Constraints are schema-level guard rials that prevent invalid, duplicate, or corrupted data from being written into storage, keeping the database as a reliable "source of truth".

SQL constraints maintain data integrity by preventing missing, mismatched, or invalid data, preserving relationships between linked tables, and enforcing business rules directly in the database. If an insert or update violates a constraint, the database rejects the operation and returns an error.

**Examples:**  
| Constraint Name | Core Purpose | Practical Example |
|---|---|---|
| `PRIMARY KEY` | Uniquely identifies each record in a table. It cannot contain duplicate values or `NULL` values. | `customer_id` uniquely identifies each user. |
| `FOREIGN KEY` | Links two tables together to maintain referential integrity. Ensures a value in a child table exists in the parent table. | `customer_id` inside an `orders` table must match a valid, existing ID in the `customers` table. |
| `NOT NULL` | Prevents a column from accepting `NULL` values. | Requiring an `email` field to be provided during account creation. |
| `UNIQUE` | Ensures that values in a column (or combination of columns) are unique. | Ensuring no two users register with the same `username` or `social_security_number`. |
| `CHECK` | Enforces a specified condition on the values entered into a column. | Rejecting a transaction if `price` is below zero or a user's `age` is under 18. |
| `DEFAULT` | Automatically supplies a preset value when no value is provided for a column. | Setting `status = 'active'` or `created_at = CURRENT_TIMESTAMP` by default. |

### 3.9 SQL Command Categories

**DDL (Data Definition Language)**

**Definition:**  
DDL commands manages the structure/schema of the database.

**Examples:**  
Key commands include CREATE, ALTER, DROP, TRUNCATE

**DML (Data Manipulation Language)**

**Definition:**  
DML commands adds, updates, or deletes data within tables

**Examples:**  
Key commands include INSERT, UPDATE, DELETE

**DQL (Data Query Language)**

**Definition:**  
DQL commands retrieve or read data from the database

**Example:**  
Key command includes SELECT

**Transaction Control Langauge (TCL)**

**Definition:**  
Transaction control commands manage database changes made by DML operations to ensure integrity

**Examples:**  
Key commands include COMMIT, ROLLBACK, SAVEPOINT

## 4. Putting the Terms Together

SQL is used to create, manage, and retrieve data stored in a relational database, where data is organized into tables containing rows and columns. Data types define what kind of values each column can store, keys identify records and connect related tables, relationships organize how tables are linked, and constraints enforce rules that maintain data accuracy and integrity.

