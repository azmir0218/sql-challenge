--List the following details of each employee: employee number, 
--last name, first name, sex, and salary.
--emp_no, first_name, last_name,sex,salary
select employees.emp_no,employees.first_name, employees.last_name, 
employees.sex, salaries.salary
from employees, salaries
where employees.emp_no=salaries.emp_no

--. List first name, last name, and hire date for employees who
--were hired in 1986.

select first_name, last_name, hire_date from employees where
hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following 
--information:department number, department name,the manager's 
--employee number,last name, first name.

select department.dept_no, department.dept_name, dept_manager.emp_no,
employees.first_name,employees.last_name
from department, dept_manager, employees
where employees.emp_no= dept_manager.emp_no
and department.dept_no=dept_manager.dept_no

--List the department of each employee with the following 
--information: employee number, last name, first name, and 
--department name.

select dept_manager.emp_no, employees.first_name, employees.last_name, 
department.dept_name
from department
join dept_manager
on (department.dept_no = dept_manager.dept_no)
join employees 
on (dept_manager.emp_no= employees.emp_no)

--List first name, last name, and sex for employees whose first
--name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees where first_name=
'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

select dept_manager.emp_no, employees.first_name, employees.last_name, 
department.dept_name
from employees
join dept_manager
on (employees.emp_no=dept_manager.emp_no)
join department 
on (dept_manager.dept_no=department.dept_no)
where department.dept_name ='Sales'

--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and 
--department name.

select dept_manager.emp_no, employees.first_name, employees.last_name, 
department.dept_name
from employees
join dept_manager
on (employees.emp_no=dept_manager.emp_no)
join department 
on (dept_manager.dept_no=department.dept_no)
where department.dept_name ='Sales' or department.dept_name='Development'

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
select last_name, count(*) as total_last_name from employees
group by last_name
order by total_last_name desc
