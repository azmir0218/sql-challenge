# Objective:

Perform a research project on employees of the corporation from the 1980s and 1990s. The only data available for the time period are the six csv files. 
Design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data, in other words perform data modeling. Inspect the CSVs abd sketch out an ERD of the tables. We will se the available information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

## Tasks to complete. 
* Imported each CSV file into the corresponding SQL table. Made sure to import the data in the same order that the tables were created and account for the headers when imported to avoid errors.

<img width="592" alt="Screen Shot 2021-10-28 at 6 29 10 PM" src="https://github.com/azmir0218/sql-challenge/blob/main/Emp_ERD.png">

#### Data Analysis

With a complete database, we have done the following:

1. Listed the following details of each employee: employee number, last name, first name, sex, and salary.

2. Listed first name, last name, and hire date for employees who were hired in 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.

##Tools Used:
Jupyter Notebook, SQL
