-- 1. Select all employees
SELECT emp_name FROM Employees;
-- 2. Select all departments
SELECT dept_name FROM Departments;
-- 3. Select all projects
SELECT proj_name FROM Projects;
-- 4. Select employee names and salaries only
SELECT emp_name,salary FROM Employees;
-- 5. Select project names along with department id
SELECT proj_name,dept_id FROM Projects;

--6. List employees with salary > 60000
SELECT emp_name FROM Employees WHERE salary > 60000;
--7. List employees from department 3
SELECT emp_name FROM Employees WHERE dept_id = 3;
--8. List projects belonging to department 5
SELECT proj_name FROM Projects WHERE dept_id = 5;
--9. List employees whose name starts with 'A'
SELECT emp_name FROM Employees WHERE emp_name LIKE 'A%';
--10. List employees with salary between 50000 and 65000
SELECT emp_name FROM Employees WHERE salary BETWEEN 50000 AND 65000;
--11. List employees whose status is 'Active'
SELECT emp_name FROM Employees WHERE status = 'Active';
--12. List employees not in department 2
SELECT emp_name FROM Employees WHERE NOT(dept_id = 3)

--13. List employees ordered by salary DESC
SELECT *
FROM employees
ORDER BY salary DESC;
--14. List employees ordered by dept_id ASC and salary DESC
SELECT *
FROM employees
ORDER BY dept_id ASC, salary DESC;
--15. List top 3 highest-paid employees
SELECT *
FROM employees
ORDER BY salary DESC LIMIT 3;
--16. List projects ordered alphabetically by proj_name
SELECT *
FROM Projects
ORDER BY proj_name ASC;

--17. Find the total number of employees
SELECT COUNT(emp_id) AS TotalEmployees
FROM Employees;
--18. Find the average salary of all employees
SELECT AVG(salary) AS AverageSalary
FROM Employees;
--19. Find the maximum salary
SELECT MAX(salary) AS MaxSalary
FROM Employees;
--20. Find the minimum salary
SELECT MIN(salary) AS MinSalary
FROM Employees;
--21. Find the total salary per department
SELECT dept_id, SUM(salary) AS TotalDepartmentSalary
FROM Employees
GROUP BY dept_id;
--22. Count number of employees in each department
SELECT dept_id, COUNT(emp_id) AS TotalDepartmentEmployee
FROM Employees
GROUP BY dept_id;
--23. Find the number of projects per department
SELECT dept_id, COUNT(proj_name) AS TotalDepartmentProjects
FROM Projects
GROUP BY dept_id;
--24. Find average salary for department 3
SELECT dept_id, AVG(salary) AS AverageDepartmentSalary
FROM Employees
WHERE dept_id=3;

-- 25. List total salary per department (use GROUP BY)

SELECT SUM(salary) as TotalSalary, dept_id, dept_name
FROM (
SELECT *
FROM Employees
  JOIN Departments on Employees.dept_id = Departments.dept_id
)
GROUP BY dept_id


-- 26. List departments with more than 4 employee (use HAVING)
SELECT dept_name FROM (
SELECT *
FROM Employees
  JOIN Departments on Employees.dept_id = Departments.dept_id
) GROUP BY dept_name
HAVING  COUNT(emp_name) > 4;
--OR
SELECT dept_name FROM(
SELECT dept_name, COUNT(emp_name) as TotalEmployee FROM(
SELECT *
FROM Employees
  JOIN Departments on Employees.dept_id = Departments.dept_id
) GROUP BY dept_id
) WHERE TotalEmployee > 4

-- 27. Find departments where average salary > 60000
SELECT dept_name FROM(
SELECT *
FROM Employees
  JOIN Departments on Employees.dept_id = Departments.dept_id
) GROUP BY dept_id
HAVING AVG(salary)>60000

-- 28. Count employees grouped by status
SELECT COUNT(emp_id) FROM Employees
GROUP BY status

-- 29. List all employees with their department name

SELECT emp_name,dept_name 
FROM Employees
JOIN Departments ON Employees.dept_id = Departments.dept_id 

-- 30. List all projects with department name
SELECT proj_name, dept_name FROM Projects
JOIN Departments ON Projects.dept_id = Departments.dept_id

-- 31. List employee name and project name (only if dept_id matches)
SELECT emp_name, proj_name FROM Employees
JOIN Projects ON Employees.dept_id =Projects.dept_id

-- 32. List employees with department name where salary > 60000
SELECT emp_name,dept_name,salary FROM Employees
JOIN Departments ON Employees.dept_id = Departments.dept_id
WHERE salary>60000

-- 33. Left join departments with employees (include departments with no employees)
SELECT * FROM Departments
LEFT JOIN Employees ON Employees.dept_id = Departments.dept_id

-- 34. Right join departments with employees (include employees with no department)
SELECT * FROM Employees
LEFT JOIN Departments ON Departments.dept_id = Employees.dept_id

-- 35. Inner join employees and projects on dept_id
SELECT * FROM Employees
JOIN Projects on Employees.dept_id = Projects.dept_id

--36. List employees whose salary > average salary

SELECT emp_name,salary FROM Employees
Where salary > (
  SELECT AVG(salary) FROM Employees
  )



--37. List employees who work in the department with the maximum number of employees
--SELECT dept_id FROM Employees
--Where
SELECT emp_name FROM Employees
Where dept_id in (
SELECT dept_id
FROM (SELECT COUNT(emp_name) AS EmployeeCount, dept_id
		FROM Employees
  		GROUP BY dept_id)
WHERE EmployeeCount = (
	SELECT MAX(EmployeeCount) FROM (
		SELECT COUNT(emp_name) AS EmployeeCount, dept_id
		FROM Employees
  		GROUP BY dept_id
	)
)
)



--38. List departments which have more than 2 projects
SELECT dept_name FROM Departments
WHERE dept_id = (
SELECT dept_id FROM (
	SELECT COUNT(proj_name) AS ProjectCount,dept_id FROM Projects
  GROUP BY dept_id
) WHERE ProjectCount > 2
);

--39. Find projects where department has salary sum > 300000
SELECT dept_name from Departments
WHERE dept_id in (
SELECT dept_id FROM (
	SELECT SUM(salary) as TotalSalary, dept_id FROM Employees
  GROUP BY dept_id
) WHERE TotalSalary > 300000
)


--40. Find employees working in the department of employee 'Riya Sharma'
SELECT emp_name FROM (
SELECT emp_name FROM Employees
WHERE dept_id = (
SELECT dept_id FROM Employees
  WHERE emp_name = 'Riya Sharma'
)
)
WHERE NOT(emp_name = 'Riya Sharma') ;

--41. List employees whose names contain 'Sharma'
SELECT emp_name from Employee
WHERE emp_name LIKE '%Sharma%';

--42. Convert employee names to uppercase
SELECT
    UPPER(emp_name) AS UppercaseName,
    *
FROM
    Employees;

--43. Extract year from hire_date
SELECT
emp_name,
strftime('%Y', hire_date) AS HireYear
FROM Employees;


--44. List employees hired after 2025-01-01
SELECT
emp_name,hire_date
FROM Employees
WHERE hire_date > '2025-01-01';

--45. Concatenate employee name and email in one column
SELECT emp_name || ' (' || email || ')' AS NameEmail
FROM Employees

-- 46. Update employee status to 'Inactive' for salary < 50000

UPDATE Employees
SET status = 'Inactive'
WHERE salary < 50000;
-- 47. Change phone_number for emp_id = 101
UPDATE Employees
SET phone_number  = 98765432549
WHERE emp_id=101;
-- 48. Delete employees with salary < 48000
DELETE FROM Employees
WHERE salary < 48000;
-- 49. Add a new column `bonus` to employees table
ALTER TABLE employees
ADD COLUMN bonus INT;

-- 50. Truncate the projects table
TRUNCATE TABLE employees;
