--Assign a unique row number to each employee based on hire_date.

SELECT *,
row_number() OVER(partition by dept_id ORDER BY emp_id) as rn
FROM Employees;

--Show the top 3 highest-paid employees using ROW_NUMBER().
SELECT emp_name, salary FROM (
SELECT *,
row_number() OVER(ORDER BY salary DESC) as rn
  FROM Employees
)
WHERE rn<4;

--Find the most recent hire in each department.
SELECT emp_name, dept_id,hire_date FROM(
	SELECT *,
	row_number() OVER(partition by dept_id ORDER BY hire_date DESC) as rn
  FROM Employees
) WHERE rn=1;

--Return employees who are 5th hired in the company overall.
SELECT emp_name, dept_id,hire_date,rn FROM(
	SELECT *,
	row_number() OVER(ORDER BY hire_date DESC) as rn
  FROM Employees
) WHERE rn=5;

--List employees with even row numbers when ordered by salary.
SELECT * FROM(
	SELECT *,
	row_number() OVER(ORDER BY salary DESC) as rn
  FROM Employees
) WHERE rn%2=0;

--Rank employees based on salary (highest = rank 1).

SELECT *,
rank() OVER(ORDER BY Salary DESC) as rank
FROM Employees;

--Find employees with rank 2 salary in each department.
SELECT * FROM(
SELECT *,
rank() OVER(partition by dept_id ORDER BY salary DESC) as rank
FROM Employees
)
WHERE rank=2

--List employees who share the same salary and their ranks.
SELECT * FROM(
SELECT *, 
lead(salary) OVER(ORDER BY salary DESC) as next_salary
FROM(
SELECT *,
lag(salary,1,0) OVER(ORDER BY salary DESC) as previous_salary
  FROM (
    SELECT *,
    rank() OVER(ORDER BY Salary DESC) as rank
	FROM Employees
  )
))
WHERE salary = previous_salary or salary = next_salary



--Rank employees by hire_date within departments.
SELECT *,
rank() OVER(partition by dept_id ORDER BY hire_date DESC) as rank
FROM Employees

--Find departments where more than one employee has rank 1 salary.
SELECT dept_id,COUNT(emp_id) FROM(
SELECT * FROM(
SELECT *,
rank() OVER(partition by dept_id ORDER BY salary DESC) as rank
  FROM Employees
) WHERE rank=1
) GROUP BY dept_id
HAVING COUNT(emp_id)>1

--Assign dense ranks to employees by salary.

SELECT *,
dense_rank() OVER(ORDER BY salary DESC) as dense_rank
FROM Employees;

--Compare RANK() vs DENSE_RANK() for employees with duplicate salaries.
SELECT emp_name, rank, dense_rank FROM(
SELECT *,
dense_rank() OVER(ORDER BY salary DESC) as dense_rank,
rank() OVER(ORDER BY salary DESC) as rank
  FROM Employees
)
WHERE salary IN (
SELECT salary FROM(
SELECT *,
dense_rank() OVER(ORDER BY salary DESC) as dense_rank,
rank() OVER(ORDER BY salary DESC) as rank
  FROM Employees
) GROUP BY salary
HAVING COUNT(rank)>1);

--Find employees with dense rank = 3 in each department.
SELECT * FROM(
SELECT *,
dense_rank() OVER(partition by dept_id ORDER BY salary DESC) as dense_rank
  FROM Employees
) WHERE dense_rank=3;


--Show employees who fall in the top 5 dense salary ranks.

SELECT * FROM(
SELECT *,
dense_rank() OVER(partition by dept_id ORDER BY salary DESC) as dense_rank
  FROM Employees
) WHERE dense_rank<6;


--Divide employees into 4 salary quartiles.

SELECT
    emp_name,
    salary,
    NTILE(4) OVER (ORDER BY salary ASC) AS SalaryQuartile
FROM
    Employees
ORDER BY
SalaryQuartile, salary;

--Group employees into 2 halves by hire_date.
SELECT
    *,
    NTILE(2) OVER (ORDER BY hire_date ASC) AS hire_date_halves
FROM
    Employees
ORDER BY
hire_date_halves, salary;

--Assign employees into deciles (10 groups) by salary.
SELECT
    *,
    NTILE(10) OVER (ORDER BY salary ASC) AS SalaryGroups
FROM
    Employees
ORDER BY
    SalaryGroups, salary;



--Find employees in the lowest salary quartile.
SELECT
    *,
    NTILE(10) OVER (ORDER BY salary ASC) AS SalaryGroups
FROM
    Employees
ORDER BY
SalaryGroups, salary
LIMIT 1;

-- Highest Paid employee
-- 2ND highest paid employee
-- Lowest paid employee
SELECT *,
	FIRST_VALUE(emp_name) OVER(ORDER BY salary DESC) AS HighestPaidEmployee,
  NTH_VALUE(emp_name,2) OVER (ORDER BY salary DESC) AS SecondPaidEmployee,
	LAST_VALUE(emp_name) OVER (ORDER BY salary DESC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)  AS LowestPaidEmployee
FROM
    Employees;

/*
Find the running total salary of employees ordered by hire_date.

Calculate total salary per department.

Compute cumulative salary by department ordered by salary.

Find difference between employee salary and department total.

Compare each employee’s salary against the company total salary.
*/


/*
Calculate average salary in each department.

Compare each employee’s salary with department average.

Show employees earning above company-wide average.

Find employees whose salary is below department avg.

Show moving average salary ordered by hire_date.
*/

/*
Find the minimum salary per department.

Compare each salary against the minimum company salary.

Highlight employees whose salary = dept minimum.

Show min salary as a reference column with each employee.

List departments with min salary below 20,000.
*/

/*
Find the maximum salary per department.

Compare each employee’s salary with dept max.

Show employees with the highest salary company-wide.

Add a column max_salary_in_dept for every employee.

Rank departments by their max salary.
*/

/*
Count employees per department.

Show how many employees share the same salary.

Count employees hired each year.

Add a column total_employees_in_company for all rows.

Find departments with less than 5 employees.
*/

/*
Show each employee and the next employee’s salary by hire_date.

Find salary difference with the next employee.

List employees hired before someone else (lead hire date).

Show each employee with the next higher salary.

Compare salary with next 2 hires (LEAD offset = 2).
*/


/*
Show each employee and the previous employee’s salary by hire_date.

Find salary difference with previous employee.

List employees who were hired immediately after someone.

Compare salary with previous 2 hires (LAG offset = 2).

Detect sudden salary jumps by comparing with previous row.
*/

/*
Find the first hired employee company-wide.

Show first hired employee in each department.

Compare each employee with the first salary in dept.

Show each department’s first hire date alongside all employees.

Find if anyone’s salary equals dept first salary.
*/

/*
Find the last hired employee company-wide.

Show last salary in each department.

Compare each employee’s salary with last dept salary.

Show department’s last hire name next to all employees.

Find if anyone earns the last dept salary.
*/

/*
Find the 2nd highest salary company-wide.

Show 3rd hired employee in each department.

Compare each employee’s salary with 2nd salary in dept.

Find the 5th hired employee overall.

Check who holds the nth salary position in each department.
*/
