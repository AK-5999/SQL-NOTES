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
