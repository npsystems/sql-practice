# SQL Learning Roadmap

**Purpose:** Track my progress learning SQL through hands-on exercises, documented solutions, and practical projects.

Use the checkboxes to track progress. Mark a topic complete when I have practiced it and can explain how and why it works—not simply after watching a lesson.

## 1. SQL Fundamentals

### Query structure and basic retrieval
- [ ] Understand relational databases, tables, rows, and columns
- [ ] `SELECT` and `FROM`
- [ ] Select specific columns versus `SELECT *`
- [ ] Column aliases using `AS`
- [ ] `DISTINCT`
- [ ] `LIMIT` and `OFFSET`

### Filtering and sorting
- [ ] `WHERE`
- [ ] Comparison operators (`=`, `<>`, `<`, `>`, `<=`, `>=`)
- [ ] `AND`, `OR`, and `NOT`
- [ ] `IN` and `NOT IN`
- [ ] `BETWEEN`
- [ ] `LIKE` and `ILIKE`
- [ ] `IS NULL` and `IS NOT NULL`
- [ ] `ORDER BY` and ascending/descending order
- [ ] Arithmetic expressions and operator precedence

## 2. Aggregations

- [ ] `COUNT`
- [ ] `SUM`
- [ ] `AVG`
- [ ] `MIN` and `MAX`
- [ ] `GROUP BY`
- [ ] `HAVING`
- [ ] Difference between `WHERE` and `HAVING`
- [ ] Conditional aggregation
- [ ] Understand how aggregate functions handle `NULL`

## 3. Joins

- [ ] Understand primary keys and foreign keys
- [ ] Understand one-to-one, one-to-many, and many-to-many relationships
- [ ] `INNER JOIN`
- [ ] `LEFT JOIN`
- [ ] `RIGHT JOIN`
- [ ] `FULL OUTER JOIN`
- [ ] `CROSS JOIN`
- [ ] Self joins
- [ ] Join more than two tables
- [ ] Join using multiple conditions
- [ ] Recognize how joins can create duplicate or multiplied rows
- [ ] Find unmatched records with `LEFT JOIN` and `IS NULL`
- [ ] Basic `EXISTS` and `NOT EXISTS`

## 4. Intermediate SQL

### Conditional logic and subqueries
- [ ] `CASE` expressions
- [ ] Basic subqueries
- [ ] Scalar subqueries
- [ ] Multi-row subqueries
- [ ] Correlated subqueries
- [ ] `EXISTS` and `NOT EXISTS`

### Reusable query structure and combining results
- [ ] Common Table Expressions (CTEs) using `WITH`
- [ ] Use multiple CTEs in one query
- [ ] `UNION`
- [ ] `UNION ALL`
- [ ] `INTERSECT`
- [ ] `EXCEPT`

### Useful functions and data types
- [ ] String functions
- [ ] String concatenation
- [ ] Date and time functions
- [ ] `CAST` and type conversion
- [ ] `COALESCE`
- [ ] `NULLIF`
- [ ] Handle `NULL` values intentionally

## 5. Window Functions

- [ ] Understand `OVER`
- [ ] `PARTITION BY`
- [ ] Ordering within a window
- [ ] `ROW_NUMBER`
- [ ] `RANK`
- [ ] `DENSE_RANK`
- [ ] `LAG` and `LEAD`
- [ ] Running totals
- [ ] Moving averages
- [ ] Percentages of totals
- [ ] Top N records per group
- [ ] Understand window frames at a basic level

## 6. Practical Projects

- [ ] Complete a small set of foundational SQL exercises
- [ ] Analyze a business dataset using filters and sorting
- [ ] Summarize data with aggregations and grouping
- [ ] Combine related tables using joins
- [ ] Answer multi-step questions using intermediate SQL
- [ ] Use a window function to analyze rankings or trends
- [ ] Complete one end-to-end SQL analysis project
- [ ] Document the business questions being answered
- [ ] Include SQL queries and explain the results
- [ ] Record meaningful findings or recommendations
- [ ] Update the repository README with project links

## 7. Database Design and Data Modeling — Separate Learning Track

These topics will be covered in my separate data modeling course. Check them off here only when learned and practiced.

- [ ] Relational database concepts and schemas
- [ ] Entity-Relationship Diagrams (ERDs)
- [ ] Entities, attributes, and relationships
- [ ] Cardinality and optionality
- [ ] Primary, foreign, natural, surrogate, and composite keys
- [ ] Referential integrity and constraints
- [ ] Normalization (1NF, 2NF, 3NF)
- [ ] Junction tables for many-to-many relationships
- [ ] Fact and dimension tables
- [ ] Star and snowflake schemas
- [ ] OLTP versus OLAP and data warehouses

## 8. Later Topics — After the Initial Portfolio Sprint

These are not priorities for my first three-day portfolio sprint.

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
- [ ] Check referential integrity
- [ ] Calculate and interpret business metrics

### Performance and professional practices
- [ ] Understand logical SQL query execution order
- [ ] Basic indexes and when they help
- [ ] Read a basic `EXPLAIN` plan
- [ ] Format and comment SQL clearly
- [ ] Debug queries and test edge cases
- [ ] Use Git and GitHub to document work
- [ ] Explain query results in plain language
- [ ] Learn key differences between SQL dialects

## Exercise Documentation Checklist

For representative exercises, record:

- [ ] Problem or business question
- [ ] Relevant tables and columns
- [ ] SQL solution in a `.sql` file
- [ ] Explanation of how the query works
- [ ] Expected output or result summary, when useful
- [ ] Key takeaway
- [ ] Business insight, when relevant

## Working Rule

Prioritize understanding and applying the fundamentals before moving on. Advanced topics can remain unchecked until they are relevant to a project or the next stage of learning.
