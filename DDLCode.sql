
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
(109, 'Deepak Jain', 56000, 9, '9876543218', '2024-09-20', 'Active', 'deepak.jain@company.com'),
(110, 'Kavita Singh', 61000, 1, '9876543219', '2025-03-12', 'Active', 'kavita.singh@company.com'),
(111, 'Manish Sharma', 58000, 2, '9876543220', '2025-02-15', 'Active', 'manish.sharma@company.com'),
(112, 'Sunita Reddy', 72000, 3, '9876543221', '2025-01-20', 'Active', 'sunita.reddy@company.com'),
(113, 'Aakash Verma', 49000, 4, '9876543222', '2025-04-05', 'Active', 'aakash.verma@company.com'),
(114, 'Priya Gupta', 67000, 5, '9876543223', '2024-12-18', 'Active', 'priya.gupta@company.com'),
(115, 'Rohit Mehta', 50000, 6, '9876543224', '2025-03-28', 'Active', 'rohit.mehta@company.com'),
(116, 'Tarun Bansal', 75000, 7, '9876543225', '2025-05-01', 'Active', 'tarun.bansal@company.com'),
(117, 'Shreya Das', 52000, 8, '9876543226', '2024-11-25', 'Active', 'shreya.das@company.com'),
(118, 'Gaurav Patil', 59000, 9, '9876543227', '2025-04-10', 'Active', 'gaurav.patil@company.com'),
(119, 'Alia Khan', 63000, 1, '9876543228', '2025-06-05', 'Active', 'alia.khan@company.com'),
(120, 'Nitin Goyal', 54000, 2, '9876543229', '2025-01-01', 'Active', 'nitin.goyal@company.com'),
(121, 'Harsha Raj', 80000, 3, '9876543230', '2024-10-20', 'Active', 'harsha.raj@company.com'),
(122, 'Vani Iyer', 47000, 4, '9876543231', '2025-02-08', 'Active', 'vani.iyer@company.com'),
(123, 'Siddharth Rao', 69000, 5, '9876543232', '2025-04-22', 'Active', 'siddharth.rao@company.com'),
(124, 'Leena Jain', 51000, 6, '9876543233', '2024-09-15', 'Active', 'leena.jain@company.com'),
(125, 'Kiran Varma', 78000, 7, '9876543234', '2025-01-05', 'Active', 'kiran.varma@company.com'),
(126, 'Zoya Ali', 57000, 8, '9876543235', '2025-03-01', 'Active', 'zoya.ali@company.com'),
(127, 'Rohan Tandon', 62000, 9, '9876543236', '2024-10-28', 'Active', 'rohan.tandon@company.com'),
(128, 'Bhavna Roy', 64000, 1, '9876543237', '2025-05-15', 'Active', 'bhavna.roy@company.com'),
(129, 'Vivek Mehra', 60000, 2, '9876543238', '2025-04-18', 'Active', 'vivek.mehra@company.com'),
(130, 'Deepa Nair', 85000, 3, '9876543239', '2024-11-10', 'Active', 'deepa.nair@company.com'),
(131, 'Ajay Singh', 46000, 4, '9876543240', '2025-03-05', 'Active', 'ajay.singh@company.com'),
(132, 'Meera Reddy', 71000, 5, '9876543241', '2025-06-01', 'Active', 'meera.reddy@company.com'),
(133, 'Faisal Ahmed', 52000, 6, '9876543242', '2024-12-10', 'Active', 'faisal.ahmed@company.com'),
(134, 'Preeti Kaur', 79000, 7, '9876543243', '2025-02-25', 'Active', 'preeti.kaur@company.com'),
(135, 'Kunal Kapoor', 58000, 8, '9876543244', '2025-01-18', 'Active', 'kunal.kapoor@company.com'),
(136, 'Jatin Shah', 65000, 9, '9876543245', '2025-05-20', 'Active', 'jatin.shah@company.com'),
(137, 'Simran Dutta', 68000, 1, '9876543246', '2024-10-01', 'Active', 'simran.dutta@company.com'),
(138, 'Prakash Hegde', 53000, 2, '9876543247', '2025-03-15', 'Active', 'prakash.hegde@company.com'),
(139, 'Tina Mathew', 82000, 3, '9876543248', '2025-04-12', 'Active', 'tina.mathew@company.com');

INSERT INTO projects (proj_id, proj_name, dept_id) VALUES
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
(210, 'Internal Knowledge Portal', 3),
(211, 'Annual Performance Review', 1),
(212, 'Q3 Budget Forecasting', 2),
(213, 'Cloud Migration Strategy', 3),
(214, 'Influencer Marketing Pilot', 4),
(215, 'Key Account Management', 5),
(216, 'Help Desk System Upgrade', 6),
(217, 'AI Research Initiative', 7),
(218, 'Data Privacy Implementation', 8),
(219, 'Supplier Quality Assurance', 9),
(220, 'Mobile App Development', 3);
