-- Create tables to import CSVs

-- create title table
CREATE TABLE IF NOT EXISTS titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY (title_id)
);

-- verify successful table creation
SELECT * FROM titles;

-- ************************************

-- create employees table
-- need to look up how to set DATE datatype MDY
CREATE TABLE IF NOT EXISTS employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex CHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- verify successful table creation
SELECT * FROM employees;

-- ************************************

-- create departments table
CREATE TABLE IF NOT EXISTS departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- verify successful table creation
SELECT * FROM departments;

-- ************************************

--  create dept_emp table
-- make a composite primary key because employees can work in multiple depts
CREATE TABLE IF NOT EXISTS dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- verify successful table creation
SELECT * FROM dept_emp;

-- ************************************

-- create dept_manager table
-- use emp_no as primary key since unique
CREATE TABLE IF NOT EXISTS dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- verify successful table creation
SELECT * FROM dept_manager;

-- ************************************

-- create salaries table
CREATE TABLE IF NOT EXISTS salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- verify successful table creation
SELECT * FROM salaries;

-- ************************************