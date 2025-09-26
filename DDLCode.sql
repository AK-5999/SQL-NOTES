
DROP TABLE employees; --Removes the entire table from the database (data + structure gone).

TRUNCATE TABLE employees; --Keeps the table structure but deletes all rows inside it., The table stays, but it’s empty (faster than DELETE).

DELETE FROM employees;   -- deletes all rows, table still exists
DELETE FROM employees WHERE salary < 30000;  -- deletes only matching rows

CREATE TABLE departments(
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)   
);
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,  	
  emp_name VARCHAR(50),    
  salary INT,    
  dept_id INT,    
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
CREATE TABLE projects (
  proj_id INT PRIMARY KEY,    
  proj_name VARCHAR(50),    
  dept_id INT,    
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

ALTER TABLE employees
ADD phone_number VARCHAR(15);
--ALTER TABLE employees
--DROP COLUMN email;
ALTER TABLE employees
ADD email VARCHAR(100);
ALTER TABLE employees
ADD hire_date DATE NOT NULL;
ALTER TABLE employees
ADD status VARCHAR(10) DEFAULT 'Active';
INSERT INTO departments (dept_id, dept_name)
VALUES (9, 'Quality Assurance');
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Information Technology'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Customer Support'),
(7, 'Research & Development'),
(8, 'Legal');


INSERT INTO employees (emp_id, emp_name, salary, dept_id, phone_number, hire_date, status, email) VALUES
(101, 'Aman Kumar', 60000, 1, '9876543210', '2025-01-15', 'Active', 'aman.kumar@company.com'),
(102, 'Riya Sharma', 55000, 2, '9876543211', '2024-12-01', 'Active', 'riya.sharma@company.com'),
(103, 'Vikram Singh', 70000, 3, '9876543212', '2025-02-20', 'Active', 'vikram.singh@company.com'),
(104, 'Neha Verma', 50000, 4, '9876543213', '2024-11-05', 'Active', 'neha.verma@company.com'),
(105, 'Rajesh Gupta', 65000, 5, '9876543214', '2025-03-10', 'Active', 'rajesh.gupta@company.com'),
(106, 'Pooja Mehta', 48000, 6, '9876543215', '2024-10-12', 'Active', 'pooja.mehta@company.com'),
(107, 'Suresh Reddy', 72000, 7, '9876543216', '2025-04-01', 'Active', 'suresh.reddy@company.com'),
(108, 'Anjali Kapoor', 53000, 8, '9876543217', '2025-01-30', 'Active', 'anjali.kapoor@company.com'),
(109, 'Deepak Jain', 56000, 9, '9876543218', '2024-09-20', 'Active', 'deepak.jain@company.com');

INSERT INTO projects (proj_id, proj_name, dept_id) VALUES
(201, 'Employee Onboarding', 1),
(202, 'Payroll Automation', 2),
(203, 'Website Revamp', 3),
(204, 'Social Media Campaign', 4),
(205, 'CRM Integration', 5),
(206, 'Customer Feedback System', 6),
(207, 'New Product R&D', 7),
(208, 'Legal Compliance Audit', 8),
(209, 'Market Expansion Study', 9),
(210, 'Internal Knowledge Portal', 3);
