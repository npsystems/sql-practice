# SQL Learning Roadmap
 
**Goal:** Build practical SQL skills through exercises, documented solutions, and a small portfolio project.

## How to use this roadmap

- [ ] Mark a topic complete after you have practiced it and can explain it in your own words.
- [ ] Save representative solutions in the matching topic folder.
- [ ] For challenging exercises, document the question, query, explanation, and takeaway.

## 1. SQL and Relational Database Fundamentals

### Core terminology
- [ ] Understand what SQL is and what a relational database is.
- [ ] Understand the difference between a DBMS and an RDBMS.
- [ ] Explain tables, rows/records, columns/fields, schemas, and database objects.
- [ ] Recognize common data types: `INTEGER`, `DECIMAL`, `VARCHAR`, `TEXT`, `DATE`, `TIMESTAMP`, and `BOOLEAN`.
- [ ] Understand the difference between `NULL`, zero, and an empty string.
- [ ] Understand primary keys and foreign keys.
- [ ] Recognize one-to-one, one-to-many, and many-to-many relationships.
- [ ] Understand what constraints do and why databases use them.
- [ ] Recognize the broad SQL command categories: DDL, DML, queries (often called DQL), and transaction control.

### Basic querying
- [ ] `SELECT` and `FROM`
- [ ] Column aliases with `AS`
- [ ] `DISTINCT`
- [ ] `LIMIT` and `OFFSET`
- [ ] `WHERE`
- [ ] Comparison operators: `=`, `<>`, `<`, `>`, `<=`, `>=`
- [ ] Combine conditions with `AND`, `OR`, and `NOT`
- [ ] `IN`, `NOT IN`, and `BETWEEN`
- [ ] `LIKE` and PostgreSQL's `ILIKE`
- [ ] `IS NULL` and `IS NOT NULL`
- [ ] `ORDER BY`, `ASC`, and `DESC`
- [ ] Understand why results are not guaranteed to be sorted without `ORDER BY`
- [ ] Basic arithmetic expressions

## 2. Aggregations

- [ ] `COUNT(*)` and `COUNT(column)`
- [ ] `SUM`, `AVG`, `MIN`, and `MAX`
- [ ] Understand how aggregate functions handle `NULL`
- [ ] `GROUP BY` one or more columns
- [ ] `HAVING`
- [ ] Explain the difference between `WHERE` and `HAVING`
- [ ] Basic conditional aggregation using `CASE`
- [ ] Check that joins have not unintentionally inflated counts or totals

## 3. Joins

- [ ] Understand how tables relate through key columns
- [ ] `INNER JOIN`
- [ ] `LEFT JOIN`
- [ ] `RIGHT JOIN` and `FULL OUTER JOIN` at a basic level
- [ ] `CROSS JOIN` at a basic level
- [ ] Self joins at a basic level
- [ ] Join three or more tables
- [ ] Use table aliases
- [ ] Join using more than one condition when needed
- [ ] Understand the role of `ON` versus `WHERE`
- [ ] Understand how one-to-many joins can return multiple rows per parent
- [ ] Identify duplicate or multiplied rows caused by joins
- [ ] Find unmatched rows with `LEFT JOIN` and `IS NULL`
- [ ] Basic `EXISTS` and `NOT EXISTS`

## 4. Intermediate SQL

### Conditional logic and subqueries
- [ ] `CASE WHEN ... THEN ... ELSE ... END`
- [ ] Create categories from values using `CASE`
- [ ] Basic scalar and multi-row subqueries
- [ ] Understand correlated subqueries at a basic level
- [ ] Use `IN`, `EXISTS`, and `NOT EXISTS` appropriately

### CTEs and set operations
- [ ] Common Table Expressions (CTEs) using `WITH`
- [ ] Use a CTE to break a long query into readable steps
- [ ] `UNION` and `UNION ALL`
- [ ] Recognize `INTERSECT` and `EXCEPT`

### Useful functions
- [ ] String concatenation
- [ ] Common string functions
- [ ] Basic date and time functions
- [ ] Convert data types with `CAST` or PostgreSQL's `::` syntax
- [ ] `COALESCE` for fallback values when data is `NULL`
- [ ] `NULLIF` for handling selected values as `NULL`

## 5. Window Functions 

- [ ] Understand how window functions differ from `GROUP BY` aggregates
- [ ] `OVER`
- [ ] `PARTITION BY`
- [ ] Ordering inside a window definition
- [ ] `ROW_NUMBER`
- [ ] `RANK` and `DENSE_RANK`
- [ ] `LAG` and `LEAD`
- [ ] Running totals
- [ ] Moving averages
- [ ] Top N rows per group


## 7. SQL Terminology Reference

Use this section as a vocabulary checklist. You do not need to master every term immediately; understand the foundational terms first and revisit the rest when they become relevant.

### Database architecture and structures
- [ ] **SQL:** Structured Query Language, used to query and manage relational data.
- [ ] **DBMS:** Database Management System; software used to manage databases.
- [ ] **RDBMS:** A DBMS based on the relational model, such as PostgreSQL, MySQL, or SQL Server.
- [ ] **Database:** An organized collection of data.
- [ ] **Schema:** A namespace that organizes database objects; it also commonly refers to the logical structure/design of data.
- [ ] **Table:** Data organized into rows and columns.
- [ ] **Row/record:** One entry in a table.
- [ ] **Column/field:** An attribute stored for each row.
- [ ] **Data type:** Defines the kind of value a column can hold.
- [ ] **Database object:** An item such as a table, view, index, or sequence.

### Keys, relationships, and constraints
- [ ] **Primary key (PK):** Column or columns that uniquely identify a row; primary-key values cannot be `NULL`.
- [ ] **Foreign key (FK):** Column or columns that reference a key in another or the same table and help enforce referential integrity.
- [ ] **Unique constraint:** Prevents duplicate values or combinations of values, subject to the database's handling of `NULL`.
- [ ] **NOT NULL constraint:** Requires a column to have a value.
- [ ] **CHECK constraint:** Enforces a condition on stored values, such as `quantity > 0`.
- [ ] **Referential integrity:** Keeps references between related tables valid.
- [ ] **Cardinality:** Describes how many records in one entity can relate to records in another (for example, one-to-many).

### SQL command categories
- [ ] **DDL (Data Definition Language):** Defines or changes database structures; examples include `CREATE`, `ALTER`, and `DROP`.
- [ ] **DML (Data Manipulation Language):** Changes data; examples include `INSERT`, `UPDATE`, and `DELETE`.
- [ ] **DQL (Data Query Language):** A common teaching label for querying data, especially `SELECT`. It is not always treated as a separate formal category.
- [ ] **TCL (Transaction Control Language):** Controls transactions; examples include `COMMIT` and `ROLLBACK`.
- [ ] **DCL (Data Control Language):** Manages permissions; examples include `GRANT` and `REVOKE`.

### Query terminology
- [ ] **Query:** A request to retrieve or work with data.
- [ ] **Clause:** A component of a SQL statement, such as `SELECT`, `FROM`, `WHERE`, or `ORDER BY`.
- [ ] **Predicate/condition:** An expression that evaluates a condition, often used to filter records.
- [ ] **Join:** Combines related rows from tables.
- [ ] **Aggregate function:** Calculates a summary across rows, such as `COUNT` or `AVG`.
- [ ] **Subquery:** A query nested inside another query or statement.
- [ ] **CTE:** A named temporary result defined with `WITH` for use in a single statement.
- [ ] **View:** A named query that can be queried like a table; a regular view generally stores its definition rather than a separate copy of its results.
- [ ] **NULL:** A marker for missing, unknown, or inapplicable data; it is not equal to zero or an empty string.
- [ ] **Alias:** A temporary name given to a table or output column in a query.

### Performance and reusable objects — Awareness Only
- [ ] **Index:** A data structure that can speed up certain lookups, with storage and modification overhead.
- [ ] **Execution plan:** The database's chosen strategy for running a query; PostgreSQL can show it with `EXPLAIN`.
- [ ] **Stored procedure:** A named database routine that can be invoked to perform operations; details vary by database system.
- [ ] **Function:** A reusable routine that returns a value or result; SQL functions differ by database system.
- [ ] **Trigger:** Logic that runs automatically in response to specified database events.
- [ ] **Materialized view:** A stored result of a query that must be refreshed to reflect later changes.

### Transactions and reliability — Awareness Only
- [ ] **Transaction:** A group of operations treated as a unit of work.
- [ ] **COMMIT:** Finalizes a transaction.
- [ ] **ROLLBACK:** Cancels uncommitted changes in a transaction.
- [ ] **ACID:** A set of transaction properties: Atomicity, Consistency, Isolation, and Durability.
- [ ] **Atomicity:** All operations in a transaction succeed together or are rolled back together.
- [ ] **Consistency:** A transaction preserves database rules and constraints.
- [ ] **Isolation:** Concurrent transactions are controlled to reduce unwanted interference; exact guarantees depend on the isolation level.
- [ ] **Durability:** Committed changes are designed to survive failures.

## 8. Later Topics 

### Advanced SQL patterns
- [ ] Recursive CTEs
- [ ] Deduplication patterns
- [ ] Gaps-and-islands problems
- [ ] Cohort, retention, and churn analysis
- [ ] Month-over-month and year-over-year analysis
- [ ] Percentiles and median calculations

### Data quality and analysis
- [ ] Identify duplicate records
- [ ] Investigate missing values
- [ ] Standardize text and dates
- [ ] Validate ranges and business rules
- [ ] Check for unmatched references
- [ ] Validate counts and totals after transformations
- [ ] Explain business metrics and findings clearly

### Performance and administration
- [ ] Basic indexes and query plans
- [ ] Query optimization
- [ ] Transactions, isolation levels, locks, and deadlocks in more depth
- [ ] Permissions and database administration
- [ ] More advanced views, procedures, functions, and triggers
