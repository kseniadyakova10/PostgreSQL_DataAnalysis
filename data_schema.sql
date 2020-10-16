CREATE TABLE emp_titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees_data (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES emp_titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees_data (emp_no),
    dept_no VARCHAR NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_mananger (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees_data (emp_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
