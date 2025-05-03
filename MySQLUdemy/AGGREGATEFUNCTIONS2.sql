SELECT COUNT(DISTINCT dept_no)
FROM dept_emp;


SELECT
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


SELECT
    MIN(emp_no)
FROM
   employees;


SELECT
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';


SELECT
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';



SELECT
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;



SELECT
    IFNULL(dept_no, 'N/A') as dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;