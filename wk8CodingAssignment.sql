SELECT t.title, COUNT(*) AS empCount FROM employees e INNER JOIN titles t ON e.emp_no = t.emp_no WHERE birth_date > '1965-01-01' GROUP BY t.title;
SELECT t.title, avg(salary) AS "Average Salary" FROM salaries s INNER JOIN titles t ON s.emp_no = t.emp_no GROUP BY t.title;
SELECT sum(salary) AS "Salary Total" FROM salaries s INNER JOIN dept_emp de ON de.emp_no = s.emp_no INNER JOIN departments d ON d.dept_no = de.dept_no 
WHERE d.dept_name LIKE 'Marketing%' AND s.from_date > '1990-01-01' AND s.to_date < '1992-01-01';