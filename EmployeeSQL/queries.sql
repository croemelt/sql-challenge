--  1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary 
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

--  2. List employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1986%';

--  3. List the manager of each department with the following information: department number, department name, 
--     the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name, m.from_date, m.to_date
FROM departments as d
INNER JOIN dept_manager AS m ON
m.dept_no = d.dept_no
INNER JOIN employees AS e on
e.emp_no = m.emp_no;

--  4. List the department of each employee with the following information: 
--     employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no;

--  5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--  6. List all employees in the Sales department, including their employee number, last name, 
--     first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales';

--  7. List all employees in the Sales and Development departments, including their employee number, 
--     last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON
e.emp_no = de.emp_no
INNER JOIN departments AS d ON
d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Sales' OR d.dept_name LIKE 'Development';

--  8. In descending order, list the frequency count of employee last names, 
--     i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS count_last_name
FROM employees
GROUP BY last_name
ORDER BY count_last_name DESC;


