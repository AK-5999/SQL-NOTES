# -------------------------------
# SQL Practice Questions
# Multi-table DB: departments, employees, projects
# Beginner to Medium Level
# -------------------------------

# 1️⃣ Basic SELECT Queries
# 1. Select all employees
# 2. Select all departments
# 3. Select all projects
# 4. Select employee names and salaries only
# 5. Select project names along with department id

# 2️⃣ WHERE Clause
# 6. List employees with salary > 60000
# 7. List employees from department 3
# 8. List projects belonging to department 5
# 9. List employees whose name starts with 'A'
# 10. List employees with salary between 50000 and 65000
# 11. List employees whose status is 'Active'
# 12. List employees not in department 2

# 3️⃣ ORDER BY / LIMIT
# 13. List employees ordered by salary DESC
# 14. List employees ordered by dept_id ASC and salary DESC
# 15. List top 3 highest-paid employees
# 16. List projects ordered alphabetically by proj_name

# 4️⃣ Aggregate Functions
# 17. Find the total number of employees
# 18. Find the average salary of all employees
# 19. Find the maximum salary
# 20. Find the minimum salary
# 21. Find the total salary per department
# 22. Count number of employees in each department
# 23. Find the number of projects per department
# 24. Find average salary for department 3

# 5️⃣ GROUP BY / HAVING
# 25. List total salary per department (use GROUP BY)
# 26. List departments with more than 1 employee (use HAVING)
# 27. Find departments where average salary > 60000
# 28. Count employees grouped by status

# 6️⃣ JOIN Queries
# 29. List all employees with their department name
# 30. List all projects with department name
# 31. List employee name and project name (only if dept_id matches)
# 32. List employees with department name where salary > 60000
# 33. Left join departments with employees (include departments with no employees)
# 34. Right join departments with employees (include employees with no department)
# 35. Inner join employees and projects on dept_id

# 7️⃣ Subqueries
# 36. List employees whose salary > average salary
# 37. List employees who work in the department with the maximum number of employees
# 38. List departments which have more than 2 projects
# 39. Find projects where department has salary sum > 200000
# 40. Find employees working in the department of employee 'Riya Sharma'

# 8️⃣ String / Date Functions
# 41. List employees whose names contain 'Sharma'
# 42. Convert employee names to uppercase
# 43. Extract year from hire_date
# 44. List employees hired after 2025-01-01
# 45. Concatenate employee name and email in one column

# 9️⃣ ALTER / UPDATE / DELETE / TRUNCATE
# 46. Update employee status to 'Inactive' for salary < 50000
# 47. Change phone_number for emp_id = 101
# 48. Delete employees with salary < 48000
# 49. Add a new column `bonus` to employees table
# 50. Truncate the projects table
