-- drop table if exists
DROP TABLE IF EXISTS titles;

-- create title table
CREATE TABLE IF NOT EXISTS titles (
    title_id VARCHAR(5),
    title VARCHAR(30),
    PRIMARY KEY (title_id)
);

-- verify successful table creation
SELECT * FROM titles;

-- ************************************

-- drop table if exists
DROP TABLE IF EXISTS employees;

-- create employees table
-- need to look up how to set DATE datatype MDY
CREATE TABLE employees (
    emp_no INT,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex CHAR,
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- verify successful table creation
SELECT * FROM employees;

-- ************************************

-- Create tables to import CSVs
-- drop table if exists
DROP TABLE IF EXISTS departments;

-- create departments table
CREATE TABLE departments (
    dept_no VARCHAR(4),
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_no)
);

-- verify successful table creation
SELECT * FROM departments;

-- ************************************

-- drop table if exists
DROP TABLE IF EXISTS dept_emp;

--  create dept_emp table
-- make a composite primary key because employees can work in multiple depts
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- verify successful table creation
SELECT * FROM dept_emp;

-- ************************************

-- drop table if exists
-- drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- create dept_manager table
-- use emp_no as primary key since unique
CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- verify successful table creation
SELECT * FROM dept_manager;

-- ************************************

-- drop table if exists
DROP TABLE IF EXISTS salaries;

-- create salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- verify successful table creation
SELECT * FROM salaries;

-- ************************************