ALTER TABLE departments_dup
DROP COLUMN dept_manager;
ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no CHAR(4) NULL;
ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;

SELECT
    e.first_name, e.last_name, e.hire_date, t.title
FROM employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHER
    first_name = 'Margareta'
        AND last_name = 'Markovitch'
ORDER BY e.emp_no;   


