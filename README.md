# Mysql-backup-recovery-utility


## 📌 Project Description

This project demonstrates how to perform **database backup and recovery** using **MySQL Workbench**. It covers:
- Creating a sample database and table
- Exporting (backing up) the database
- Simulating data loss
- Restoring the database from a `.sql` file

Useful for anyone learning database administration or practicing disaster recovery techniques.

---

## 🛠 Tools Used

- MySQL Workbench 8.0
- MySQL Server (Localhost)
- Windows 10

---

## 🗂️ File Structure

| File Name                      | Purpose                                      |
|-------------------------------|----------------------------------------------|
| `mysql_backup_script.sql`     | Contains SQL code to create database and table (`backup_demo`) and insert data |
| `employees_backup_mysql.sql`  | Backup file exported from MySQL Workbench    |
| `mysql_restore.sql`           | SQL code to create new database and prepare for restore |
| `README.md`                   | This documentation file                      |

---

## ✅ Steps Performed

### 1. Created Sample Database
```sql
CREATE DATABASE backup_demo;
USE backup_demo;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  position VARCHAR(100)
);

INSERT INTO employees VALUES
(1, 'Samia', 'Developer'),
(2, 'Ali', 'Designer'),
(3, 'Ahmed', 'Manager');

2. Exported the Backup
Used Server > Data Export

Chose Dump Structure and Data

Exported to: employees_backup_mysql.sql

3. Simulated Failure

DROP TABLE employees;

4. Created New Database and Restored

CREATE DATABASE backup_restore_demo;
USE backup_restore_demo;
Opened .sql backup file

Executed it to restore the employees table and its data

✅ How to Restore

Open mysql_restore.sql and run it

Open the backup file employees_backup_mysql.sql

Execute the script in MySQL Workbench

Data will be restored into the new database

📌 Author
This project was created to demonstrate practical knowledge in database backup and recovery using MySQL.







