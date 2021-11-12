create table department (
	dept_no varchar primary key not null,
	dept_name varchar
);

select * from department 

create table dept_emp (
	emp_no int,
	dept_no varchar,
	foreign key (dept_no) references department (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

select * from dept_emp

create table dept_manager (
	dept_no varchar,
	emp_no int,
	foreign key (dept_no) references department (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

select * from dept_manager

create table employees (
	emp_no int,
	emp_title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	primary key (emp_no),
	foreign key (emp_title_id) references titles (title_id)
);

select * from employees

create table salaries (
	emp_no int,
	salary int,
	foreign key (emp_no) references employees (emp_no)
);

select * from salaries

create table titles (
	title_id varchar,
	title varchar,
	primary key (title_id) 
);

select * from titles 