| SQL Category | Purpose                            | Main Commands                  | Example                                                                                                              |
| ------------ | ---------------------------------- | ------------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| **DDL**      | Define / modify database structure | CREATE, ALTER, DROP, TRUNCATE  | `CREATE TABLE employees (...);`<br>`ALTER TABLE employees ADD COLUMN phone_number VARCHAR(15);`                      |
| **DML**      | Manipulate data in tables          | SELECT, INSERT, UPDATE, DELETE | `INSERT INTO employees (emp_id, emp_name) VALUES (1,'Aman');`<br>`UPDATE employees SET salary=60000 WHERE emp_id=1;` |
| **DCL**      | Control access / permissions       | GRANT, REVOKE                  | `GRANT SELECT ON employees TO user1;`<br>`REVOKE INSERT ON employees FROM user1;`                                    |
| **TCL**      | Manage transactions                | COMMIT, ROLLBACK, SAVEPOINT    | `COMMIT;`<br>`ROLLBACK;`<br>`SAVEPOINT sp1;`                                                                         |

# 1️⃣ DDL – Data Definition Language
Used to define or modify database structure (tables, schema, indexes).
Common commands:
| Command    | Purpose                                  | Example                                                      |
| ---------- | ---------------------------------------- | ------------------------------------------------------------ |
| `CREATE`   | Create table, database, index, etc.      | `CREATE TABLE employees (...);`                              |
| `ALTER`    | Modify table structure (add/drop column) | `ALTER TABLE employees ADD COLUMN phone_number VARCHAR(15);` |
| `DROP`     | Delete table, database, index            | `DROP TABLE employees;`                                      |
| `TRUNCATE` | Remove all rows, keep table structure    | `TRUNCATE TABLE employees;`                                  |

# 2️⃣ DML – Data Manipulation Language
Used to manipulate data inside tables.
Common commands:
| Command  | Purpose              | Example                                                 |
| -------- | -------------------- | ------------------------------------------------------- |
| `INSERT` | Add rows to a table  | `INSERT INTO employees (...) VALUES (...);`             |
| `UPDATE` | Modify existing rows | `UPDATE employees SET salary = 60000 WHERE emp_id = 1;` |
| `DELETE` | Remove rows          | `DELETE FROM employees WHERE emp_id = 2;`               |
| `SELECT` | Retrieve data        | `SELECT * FROM employees;`                              |

# 3️⃣ DCL – Data Control Language
Used to control access and permissions in the database.
Common commands:
| Command  | Purpose                | Example                                       |
| -------- | ---------------------- | --------------------------------------------- |
| `GRANT`  | Give user privileges   | `GRANT SELECT, INSERT ON employees TO user1;` |
| `REVOKE` | Remove user privileges | `REVOKE INSERT ON employees FROM user1;`      |

# 4️⃣ TCL – Transaction Control Language
Used to manage transactions in the database.
Common commands:
| Command     | Purpose                                       | Example          |
| ----------- | --------------------------------------------- | ---------------- |
| `COMMIT`    | Save changes permanently                      | `COMMIT;`        |
| `ROLLBACK`  | Undo changes in current transaction           | `ROLLBACK;`      |
| `SAVEPOINT` | Set a point to rollback to within transaction | `SAVEPOINT sp1;` |

        
## SQL Command Categories (Horizontal Flow)

| DDL (Data Definition Language) | ➡️ | DML (Data Manipulation Language) | ➡️ | TCL (Transaction Control Language) | ➡️ | DCL (Data Control Language) |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Structure** | | **Data Ops** | | **Transactions** | | **Permissions** |
| `CREATE` | | `SELECT` | | `COMMIT` | | `GRANT` |
| `ALTER` | | `INSERT` | | `ROLLBACK` | | `REVOKE` |
| `DROP` | | `UPDATE` | | `SAVEPOINT` | | |
| | | `DELETE` | | | | |
