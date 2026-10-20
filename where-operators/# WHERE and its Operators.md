# WHERE and its Operators

## 1. Overview
**Topic:**  
**Difficulty:** Beginner  
**Status:** Completed  

## 2. Definition
**What is it?**

A WHERE statement is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.

**Why is it useful?**

WHERE statements help us filter out information we may or may not need in certain analysis studies.

## 3. Syntax
```sql
-- General syntax
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;
```

**Key components:**
- `WHERE`: creates a filter within the query that only searches for rows where the condition is met

**Operators:**
**Numerical Operators:**
| **Operator** | **Condition** | **SQL Example** |
| :---: | --- | --- |
| `=`, `!=`, `<`, `<=`, `>`, `>=` | Standard numerical comparison operators | `col_name != 4` |
| `BETWEEN ... AND ...` | Number is within a range of two values (inclusive) | `col_name BETWEEN 1.5 AND 10.5` |
| `NOT BETWEEN ... AND ...` | Number is outside a range of two values (inclusive) | `col_name NOT BETWEEN 1 AND 10` |
| `IN (...)` | Number matches a value in a list | `col_name IN (2, 4, 6)` |
| `NOT IN (...)` | Number does not match any value in a list | `col_name NOT IN (1, 3, 5)` |
**String Operators:**
| **Operator** | **Condition** | **SQL Example** |
| :---: | --- | --- |
| `=` | Exact string comparison; case sensitivity depends on the database and collation | `col_name = 'abc'` |
| `!=` or `<>` | String inequality comparison; case sensitivity depends on the database and collation | `col_name != 'abcd'` |
| `LIKE` | Matches a string pattern | `col_name LIKE 'ABC'` |
| `NOT LIKE` | Does not match a string pattern | `col_name NOT LIKE 'ABCD'` |
| `%` | Wildcard matching zero or more characters; used with `LIKE` or `NOT LIKE` | `col_name LIKE '%AT%'` |
| `_` | Wildcard matching exactly one character; used with `LIKE` or `NOT LIKE` | `col_name LIKE 'AN_'` |
| `IN (...)` | String matches a value in a list | `col_name IN ('A', 'B', 'C')` |
| `NOT IN (...)` | String does not match any value in a list | `col_name NOT IN ('D', 'E', 'F')` |

## Notes
- LIKE and NOT LIKE: These perform pattern matching, not exact string comparison. For example, LIKE '%AT%' matches strings containing AT.
- Case sensitivity: This depends on the database system and its collation settings, so it isn't always accurate to describe LIKE as case-insensitive.
- String values: SQL conventionally uses single quotes around string literals, such as 'abc'.
- BETWEEN: The range includes both endpoints. For example, col_name BETWEEN 1 AND 10 includes 1 and 10.

## 4. Example

**Problem:**  
# SQL Practice Problems: Movies Table

These exercises use the same `Movies` table as SELECT AND FROM using SQLBOLT. Write a SQL query to answer each question.


**SQL query:**  
See `WHERE-operators.sql`.

```sql

## 1. Filtering and Sorting

1. Find the movie with a row `id` of `6`.
	SELECT * 
	FROM movies
	WHERE Id = 6;
2. Find the movies released in the `year` between 2000 and 2010, inclusive.
	SELECT title, year
	FROM movies
	WHERE year BETWEEN 2000 AND 2010;
3. Find the movies **not** released in the `year` between 2000 and 2010, inclusive.
	SELECT title, year
	FROM movies
	WHERE year NOT BETWEEN 2000 AND 2010;
4. Find the first five Pixar movies and their release `year`.
	SELECT title, year FROM movies
	WHERE year <= 2003;

## 2. Filtering Text Values

1. Find all the *Toy Story* movies.
	SELECT * 
	FROM movies
	WHERE title LIKE 'Toy Story%';
2. Find all the movies directed by John Lasseter.
	SELECT * 
	FROM movies
	WHERE director LIKE 'John Lasseter';
3. Find all the movies, along with their directors, that were **not** directed by John Lasseter.
	SELECT * 
	FROM movies
	WHERE director NOT LIKE 'John Lasseter';
4. Find all the movies whose titles begin with `WALL-` (the *WALL-E* movies).
	SELECT * 
	FROM movies
	WHERE title LIKE 'WALL%';
```

## Expected Output or Result

The queries should return results that satisfy the conditions described below.

| Query | Expected Rows / Results | Conditions |
| --- | --- | --- |
| 1 | A movie record | `id = 6` |
| 2 | Movies released between 2000 and 2010 | `year >= 2000 AND year <= 2010` |
| 3 | Movies released outside 2000–2010 | `year < 2000 OR year > 2010` |
| 4 | The first five Pixar movies and their release years | Return 5 rows and include the `year` column |
| 5 | All *Toy Story* movies | `title` matches the *Toy Story* movies |
| 6 | Movies directed by John Lasseter | `director = 'John Lasseter'` |
| 7 | Movie titles and directors for movies not directed by John Lasseter | `director != 'John Lasseter'` |
| 8 | All movies whose titles begin with `WALL-` | `title LIKE 'WALL-%'` |

## General Explanation

These queries practice retrieving and filtering data from the `Movies` table using SQL. Comparison operators and `BETWEEN` filter movies by ID or release year, while `NOT` helps exclude records that meet certain conditions. Text comparisons and `LIKE` filter movies by title or director. The exercises also introduce limiting results to a specific number of rows.

## 6. References
- Resource 1: https://sqlbolt.com/lesson/select_queries_with_constraints
- Resource 2: https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2
 