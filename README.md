# sql-challenge
## UNC-CH-DA - Module 9 - SQL Challenge

### INSTRUCTIONS
* Clone the repository to your local machine.
* The Entity Relation Diagram (ERD) **QuickDBD-sql-challenge-ERD"** is located in the "sql-challenge/EmployeeSQL" folder.
* Use a PostGresSQL database mangement tool (I used pgAdmin 4, Version 7.2 for MAC) to create a new database
* Create the new tables using the query **sql-challenge-schema.sql** (found in the "sql-challenge/EmployeeSQL" folder) 
* import the CSVs located in the "sql-challenge/EmployeeSQL/Resources" folder into their corresponding tables
    **IMPORTANT** import CSV files into the tables in the order they were created in the schema query!!
* You can then use the queries in **sql-challenge-solutions.sql** (found in the "sql-challenge/EmployeeSQL" folder).

### BACKGROUND

As a newly hired data engineer for Pewlett Hackard (a fictional company) you are tasked to do a research project on employees from the 1980s.

For this project, design tables to hold the data from the provided CSV files, import the CSV files into the tables of a SQL database using a database mangement tool, and then construct queries to answer questions about the data.

### REQUIREMENTS
**Data Modeling (10 points)**
* Entity Relationship Diagram is included or table schemas are provided for all tables (10 points) 

**Data Engineering (70 points)**
* All required columns are defined for each table (10 points)

* Columns are set to the correct data type (10 points)

* Primary Keys set for each table (10 points)

* Correctly references related tables (10 points)

* Tables are correctly related using Foreign Keys (10 points)

* Correctly uses NOT NULL condition on necessary columns (10 points)

* Accurately defines value length for columns (10 points)

**Data Analysis (20 points)**
* List the employee number, last name, first name, sex and salary of each employee (2 points)

* List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

* List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)

* List each employee in the Sales department, including their employee number, last name, and first name (2 points)

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)


### RESOURCES
* database management tool, pgAdmin 4: https://www.pgadmin.org/
* ERD Tool QuickDBD:http://www.quickdatabasediagrams.com/
* For creating DATE type column and isolating the year: 
    -   https://www.geeksforgeeks.org/postgresql-date-data-type/
    -   BETWEEN statement: https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-between/ 