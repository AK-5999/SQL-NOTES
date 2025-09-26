Understood! Here is the **Detail File** in a format that is very easy to copy and paste, using clear Markdown tables.

---

# 📂 Day 1: SQL Detail File - Employee Management Schema

## 1. Database Schema Definition (DDL)

### Table: `departments`
| Column Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| **dept\_id** | `INT` | `PRIMARY KEY` | Unique ID for the department. |
| **dept\_name** | `VARCHAR(50)` | | Name of the department. |

### Table: `employees`
| Column Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| **emp\_id** | `INT` | `PRIMARY KEY` | Unique ID for the employee. |
| **emp\_name** | `VARCHAR(50)` | | Full name of the employee. |
| **salary** | `INT` | | Employee's annual salary. |
| **dept\_id** | `INT` | `FOREIGN KEY` | Links employee to their department. |
| **phone\_number** | `VARCHAR(15)` | *(Added via ALTER)* | Employee's contact number. |
| **hire\_date** | `DATE` | `NOT NULL` *(Added via ALTER)* | The date the employee was hired. |
| **status** | `VARCHAR(10)` | `DEFAULT 'Active'` *(Added via ALTER)* | Employee's working status. |
| **email** | `VARCHAR(100)` | *(Added via ALTER)* | Employee's email address. |

### Table: `projects`
| Column Name | Data Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| **proj\_id** | `INT` | `PRIMARY KEY` | Unique ID for the project. |
| **proj\_name** | `VARCHAR(50)` | | Name of the project. |
| **dept\_id** | `INT` | `FOREIGN KEY` | Department responsible for the project. |

---

## 2. Initial Data Population (DML)

### `departments` (9 Records)
| dept\_id | dept\_name |
| :--- | :--- |
| 1 | Human Resources |
| 2 | Finance |
| 3 | Information Technology |
| 4 | Marketing |
| 5 | Sales |
| 6 | Customer Support |
| 7 | Research & Development |
| 8 | Legal |
| 9 | Quality Assurance |

### `employees` (15 Records)
| emp\_id | emp\_name | salary | dept\_id | hire\_date |
| :--- | :--- | :--- | :--- | :--- |
| 101 | Aman Kumar | 60000 | 1 | 2025-01-15 |
| 102 | Riya Sharma | 55000 | 2 | 2024-12-01 |
| 103 | Vikram Singh | 70000 | 3 | 2025-02-20 |
| 104 | Neha Verma | 50000 | 4 | 2024-11-05 |
| 105 | Rajesh Gupta | 65000 | 5 | 2025-03-10 |
| 106 | Pooja Mehta | 48000 | 6 | 2024-10-12 |
| 107 | Suresh Reddy | 72000 | 7 | 2025-04-01 |
| 108 | Anjali Kapoor | 53000 | 8 | 2025-01-30 |
| 109 | Deepak Jain | 56000 | 9 | 2024-09-20 |
| 110 | Kavita Singh | 61000 | 1 | 2025-03-12 |
| 111 | Manish Sharma | 58000 | 2 | 2025-02-15 |
| 112 | Sunita Reddy | 72000 | 3 | 2025-01-20 |
| 113 | Aakash Verma | 49000 | 4 | 2025-04-05 |
| 114 | Priya Gupta | 67000 | 5 | 2024-12-18 |
| 115 | Rohit Mehta | 50000 | 6 | 2025-03-28 |

### `projects` (10 Records)
| proj\_id | proj\_name | dept\_id |
| :--- | :--- | :--- |
| 201 | Employee Onboarding | 1 |
| 202 | Payroll Automation | 2 |
| 203 | Website Revamp | 3 |
| 204 | Social Media Campaign | 4 |
| 205 | CRM Integration | 5 |
| 206 | Customer Feedback System | 6 |
| 207 | New Product R&D | 7 |
| 208 | Legal Compliance Audit | 8 |
| 209 | Market Expansion Study | 9 |
| 210 | Internal Knowledge Portal | 3 |

---

## 3. Data Management Notes (DDL/DML Commands)

| Command Type | Example | Effect / Purpose |
| :--- | :--- | :--- |
| **`DROP TABLE`** | `--DROP TABLE employees;` | Removes the entire table (structure **and** data). |
| **`TRUNCATE TABLE`** | `--TRUNCATE TABLE employees;` | Keeps the table structure, but deletes **all rows** (faster than `DELETE`). |
| **`DELETE FROM` (All)** | `--DELETE FROM employees;` | Deletes **all rows**, table structure remains (can often be rolled back). |
| **`DELETE FROM` (Filtered)** | `--DELETE FROM employees WHERE salary < 30000;` | Deletes **only matching rows**. |
| **`ALTER TABLE ADD`** | `--ALTER TABLE employees ADD email VARCHAR(100);` | Adds a new column to an existing table. |
| **`ALTER TABLE DROP`** | `--ALTER TABLE employees DROP COLUMN email;` | Removes a column from an existing table. |
