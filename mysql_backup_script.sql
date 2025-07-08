CREATE DATABASE backup_demo;

USE backup_demo;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  position VARCHAR(100)
);

INSERT INTO employees VALUES
(1, 'Sami', 'Developer'),
(2, 'Ali', 'Designer'),
(3, 'Ahmed', 'Manager');
