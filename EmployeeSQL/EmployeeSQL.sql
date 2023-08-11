DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
  dept_no VARCHAR (10) NOT NULL,
  dept_name character varying(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

SELECT * FROM departments

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no character varying(30) NOT NULL,
  PRIMARY KEY (emp_no), 
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


SELECT * FROM dept_emp

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
  dept_no VARCHAR (20) NOT NULL,
  emp_no INT NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
 
);

SELECT * FROM dept_manager


DROP TABLE employees;

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR (50),
    birth_date DATE NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(40),
    sex VARCHAR(2),
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES dept_emp (emp_no)
);

SELECT * FROM employees;

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries;

CREATE TABLE titles (
    title_id VARCHAR(50),
    title VARCHAR(50)
);
SELECT * FROM titles;


---------------------------------------
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT * FROM employees;
