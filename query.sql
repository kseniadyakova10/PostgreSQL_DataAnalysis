 -- List the following details of each employee: 
 -- employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees_data AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for 
-- employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees_data
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT employees_data.first_name, employees_data.last_name, dept_manager.dept_no, dept_manager.emp_no, departments.dept_name
FROM employees_data
JOIN dept_manager
ON employees_data.emp_no = dept_manager.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name

SELECT employees_data.emp_no, employees_data.first_name, employees_data.last_name, departments.dept_name
FROM employees_data
JOIN dept_emp
ON employees_data.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees
-- whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees_data
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.

SELECT employees_data.emp_no, employees_data.first_name, employees_data.last_name, departments.dept_name
FROM employees_data
JOIN dept_emp
ON employees_data.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments,
-- including their employee number, last name, first name, and department name
SELECT employees_data.emp_no, employees_data.first_name, employees_data.last_name, departments.dept_name
FROM employees_data
JOIN dept_emp
ON employees_data.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Production';

-- In descending order, list the frequency count of employee 
-- last names, i.e., how many employees share each last name

SELECT last_name, COUNT (emp_no) AS "last_name_count"
FROM employees_data
GROUP BY last_name
ORDER BY "last_name_count" DESC;