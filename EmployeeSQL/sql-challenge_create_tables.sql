-- Create tables to import CSVs
-- drop table if exists
DROP TABLE IF EXISTS departments;

-- create departments table
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    dept_no VARCHAR(10),
    dept_name VARCHAR(30)
);

-- verify successful table creation
SELECT * FROM departments;


-- drop table if exists
DROP TABLE IF EXISTS dept_emp;

--  create dept_emp table
CREATE TABLE dept_emp (
    id SERIAL PRIMARY KEY,
    emp_no INT,
    dept_no VARCHAR(10)
);

-- verify successful table creation
SELECT * FROM dept_emp;


-- drop table if exists
-- drop table if exists
DROP TABLE IF EXISTS dept_manager;

-- create dept_manager table
CREATE TABLE dept_manager (
    id SERIAL PRIMARY KEY,
    dept_no VARCHAR(10),
    emp_no INT
);

-- verify successful table creation
SELECT * FROM dept_manager;


-- drop table if exists
DROP TABLE IF EXISTS employees;

-- create employees table
-- need to look up how to set DATE datatype MDY
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex CHAR,
    hire_date DATE,
);

-- verify successful table creation
SELECT * FROM employees;


-- drop table if exists
DROP TABLE IF EXISTS salaries;

-- create salaries table
CREATE TABLE salaries (
    id SERIAL PRIMARY KEY,
    emp_no INT,
    salary INT
);

-- verify successful table creation
SELECT * FROM salaries;


-- drop table if exists
DROP TABLE IF EXISTS titles;

-- create title table
CREATE TABLE IF NOT EXISTS titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(30)
);

-- verify successful table creation
SELECT * FROM titles;