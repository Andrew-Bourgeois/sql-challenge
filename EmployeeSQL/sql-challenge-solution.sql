-- UNC-CH-Data Analytics: sql-challenge Data Analysis solutions

-- 1. List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;

-- 2. List the first name, last name and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '01-01-1986' AND '12-31-1986';

-- 3. List the manager of each department along with their 
-- department number, department name, employee number, last name, and first name.
-- NOTE: rename column names to make result more clear.
SELECT 
	dm.dept_no, 
	dp.dept_name, 
	e.emp_no AS manager_emp_id, 
	e.last_name AS mgr_last_name, 
	e.first_name AS mgr_first_name 
FROM dept_manager AS dm
JOIN departments AS dp ON dm.dept_no = dp.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

-- 4. List the dept number for each employee along with the employee's employee number,
-- last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_no, dp.dept_name FROM employees AS e
JOIN dept_emp ON dept_emp.emp_no = e.emp_no
JOIN departments AS dp ON dp.dept_no = dept_emp.dept_no;

-- 5. List the first name, last name and sex of each employee whose first name is Hercules and
-- whose last name begins with the letter b.
SELECT first_name, last_name FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, 
-- last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their employee
-- number, last name,  first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


-- 8. List the frequency counts, in descending order, of all the employee last names (that is,
-- how many employees share each last name)
SELECT last_name, COUNT(emp_no) AS "Last Name Count" FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;