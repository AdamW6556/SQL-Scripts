SELECT
    emp_no,
    dept_no,
    ROW_NUMBER() OVER (ORDER BY emp_no) AS row_num
FROM
dept_manager;


SELECT
emp_no,
first_name,
last_name,
ROW_NUMBER() OVER (PARTITION BY first_name ORDER BY last_name) AS row_num
FROM
employees;


SELECT
dm.emp_no,
salary,
ROW_NUMBER() OVER () AS row_num1,
ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num2
FROM
dept_manager dm
    JOIN 
    salaries s ON dm.emp_no = s.emp_no
ORDER BY row_num1, emp_no, salary ASC;


SELECT
dm.emp_no,
    salary,
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary ASC) AS row_num1,
    ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary DESC) AS row_num2   
FROM
dept_manager dm
    JOIN 
    salaries s ON dm.emp_no = s.emp_no;


SELECT
emp_no,
first_name,
ROW_NUMBER() OVER w AS row_num
FROM
employees
WINDOW w AS (PARTITION BY first_name ORDER BY emp_no);