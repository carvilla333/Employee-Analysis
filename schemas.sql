--will drop if there is existing table for titles
DROP TABLE titles

--creates table for titles.csv
CREATE TABLE titles (
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id)
);

--will show the table for titles populated with imported csv data
SELECT *
FROM public. titles

--will drop if there is existing table for employees
DROP TABLE employees

--creates table for employees.csv
CREATE TABLE employees (
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
PRIMARY KEY (emp_no)
);

--will show the table for employees populated with imported csv data
SELECT *
FROM public. employees

--will drop if there is existing table for departments
DROP TABLE departments

--creates table for departments.csv
CREATE TABLE departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no)
);

--will show the table for departments populated with imported csv data
SELECT *
FROM public.departments

--will drop if there is existing table for dept_manager
DROP TABLE dept_manager

--creates table for dept_manager.csv
CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (dept_no, emp_no)
);

--will show the table for dept_manager populated with imported csv data
SELECT *
FROM public. dept_manager

--will drop if there is existing table for dept_emp
DROP TABLE dept_emp

--creates table for dept_emp.csv
CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
PRIMARY KEY (emp_no, dept_no)
);

--will show the table for dept_emp populated with imported csv data
SELECT *
FROM public.dept_emp

--will drop if there is existing table for salaries
DROP TABLE salaries

--creates table for salaries.csv
CREATE TABLE salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
PRIMARY KEY (emp_no)
);

--will show the table for salaries populated with imported csv data
SELECT *
FROM public. salaries


