# Filtering and Sorting

## 1. Overview
**Topic: DISTINCT, GROUP BY, ORDER BY, LIMIT, OFFSET 
**Difficulty:** Beginner / Intermediate / Advanced  
**Status:** Not Started / In Progress / Completed  

## 2. Definition
## DISTINCT

**What is it?**  
`DISTINCT` removes duplicate rows from the query results based on the selected columns, returning only unique combinations of values.

**Why is it useful?**  
It helps identify unique values in a dataset without displaying repeated results. For example, you can find all the unique directors in a movie database.

---

## GROUP BY

**What is it?**  
`GROUP BY` groups rows that share the same value in one or more columns. It is commonly used with aggregate functions such as `COUNT()`, `SUM()`, and `AVG()` to summarize data.

**Why is it useful?**  
It allows you to summarize and compare data by category. For example, you can count how many movies each director has directed.

---

## ORDER BY

**What is it?**  
`ORDER BY` sorts query results according to one or more columns. `ASC` sorts in ascending order, while `DESC` sorts in descending order. If neither is specified, ascending order is the default.

**Why is it useful?**  
It makes query results easier to read and analyze by arranging them in a meaningful order. For example, you can sort movies by release year from oldest to newest.

---

## LIMIT and OFFSET

**What is it?**  
`LIMIT` specifies the maximum number of rows returned by a query. `OFFSET` specifies how many rows to skip before returning results.

**Why is it useful?**  
They help retrieve a smaller portion of a dataset instead of displaying every matching row. For example, you can display the first 10 movies or skip the first 10 results to view the next set. When using them for pagination, `ORDER BY` helps keep the results in a predictable order.

## 3. Syntax
```sql DISTINCT
-- General syntax
	SELECT DISTINCT column, another_column, …
	FROM mytable
	WHERE condition(s);
```
```sql GROUP BY
-- General syntax
	SELECT column, another_column, …
	FROM mytable
	WHERE condition(s)
	GROUP BY column;
```
```sql ORDER BY
-- General syntax
	SELECT column, another_column, …
	FROM mytable
	WHERE condition(s)
	ORDER BY column ASC/DESC;
```
```sql LIMIT and OFFSET
-- General syntax
	SELECT column, another_column, …
	FROM mytable
	WHERE condition(s)
	ORDER BY column ASC/DESC
	LIMIT num_limit OFFSET num_offset;```

## 4. Example

**Problem:**  
Practice using DISTINCT, ORDER BY, LIMIT, and OFFSET to retrieve unique directors and sort or select specific groups of Pixar movies.

**SQL query:**  
See `filering-sorting.sql`.

```sql
1. List all directors of Pixar movies (alphabetically), without duplicates
	SELECT DISTINCT director 
	FROM movies
	ORDER BY director ASC;
2. List the last four Pixar movies released (ordered from most recent to least)
	SELECT title, year
	FROM movies
	ORDER BY year DESC
	LIMIT 4;	
3. List the first five Pixar movies sorted alphabetically
	SELECT title
	FROM movies
	ORDER BY title ASC
	LIMIT 5;
4. List the next five Pixar movies sorted alphabetically
	SELECT title
	FROM movies
	ORDER BY title ASC
	LIMIT 5 OFFSET 5;
```

## Expected Output or Result

The queries return unique Pixar directors, the four most recently released movies, and two consecutive groups of five movies sorted alphabetically by title.

| Query | Expected Rows / Results | Conditions |
|---|---|---|
| 1 | A list of unique directors, in alphabetical order | Duplicate director names are removed; results are sorted A–Z. |
| 2 | The four most recently released movies, with their release years | Results are sorted by year from newest to oldest, limited to 4 rows. |
| 3 | The first five movie titles alphabetically | Results are sorted A–Z, limited to 5 rows. |
| 4 | The next five movie titles alphabetically | Results are sorted A–Z, the first 5 rows are skipped, and the next 5 are returned. |

## 5. Explanation

### Query 1: List all directors without duplicates

1. `SELECT DISTINCT director` retrieves the director names while removing duplicate values.
2. `FROM movies` specifies the table being queried.
3. `ORDER BY director ASC` sorts the director names alphabetically in ascending order.

### Query 2: List the four most recently released movies

1. `SELECT title, year` retrieves each movie's title and release year.
2. `FROM movies` specifies the table being queried.
3. `ORDER BY year DESC` sorts movies by release year from newest to oldest.
4. `LIMIT 4` restricts the results to four rows.

### Query 3: List the first five movies alphabetically

1. `SELECT title` retrieves only the movie titles.
2. `FROM movies` specifies the table being queried.
3. `ORDER BY title ASC` sorts the titles alphabetically from A to Z.
4. `LIMIT 5` returns only the first five rows after sorting.

### Query 4: List the next five movies alphabetically

1. `SELECT title` retrieves only the movie titles.
2. `FROM movies` specifies the table being queried.
3. `ORDER BY title ASC` sorts the titles alphabetically from A to Z.
4. `LIMIT 5` restricts the results to five rows.
5. `OFFSET 5` skips the first five rows, returning the next five titles in alphabetical order.

## 6. References
- Resource: https://sqlbolt.com/lesson/filtering_sorting_query_results