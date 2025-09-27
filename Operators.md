***

## SQL Operators Summary Table

| Operator Category | Operator | Description | Primary Use |
| :--- | :--- | :--- | :--- |
| **Arithmetic** | `+` | Addition | Numeric calculations |
| | `-` | Subtraction | Numeric calculations |
| | `*` | Multiplication | Numeric calculations |
| | `/` | Division | Numeric calculations |
| | `%` | Modulo (Remainder) | Numeric calculations |
| **Comparison** | `=` | Equal to | `WHERE`, `HAVING` clauses |
| | `!=` or `<>` | Not equal to | `WHERE`, `HAVING` clauses |
| | `>` | Greater than | `WHERE`, `HAVING` clauses |
| | `<` | Less than | `WHERE`, `HAVING` clauses |
| | `>=` | Greater than or equal to | `WHERE`, `HAVING` clauses |
| | `<=` | Less than or equal to | `WHERE`, `HAVING` clauses |
| **Logical** | `AND` | Both conditions must be true | Combining conditions in `WHERE` / `HAVING` |
| | `OR` | At least one condition must be true | Combining conditions in `WHERE` / `HAVING` |
| | `NOT` | Negates the condition | Reversing a condition |
| **Special/Compound** | `BETWEEN` | Value is within a range (inclusive) | Filtering numeric and date ranges |
| | `LIKE` | Pattern matching | Filtering strings with wildcards (`%`, `_`) |
| | `IN` | Value matches any item in a list | Filtering against multiple values |
| | `IS NULL` | Checks for null values | Checking for missing data |
| | `IS NOT NULL` | Checks for non-null values | Checking for presence of data |
| | `ANY` / `ALL` | Used with subqueries for set comparisons | Advanced subquery comparisons |
| | `EXISTS` | Checks if a subquery returns any row | Conditional existence checking |
| **String Concatenation** | `||` | Concatenation (PostgreSQL, SQLite, Oracle) | Joining strings |
| | `+` | Concatenation (SQL Server) | Joining strings |
| | `CONCAT()` | Concatenation (MySQL, Oracle) | Joining strings |
