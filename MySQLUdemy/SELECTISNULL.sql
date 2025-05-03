SELECT
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;

SELECT DISTINCT
    hire_date
FROM
    employees;

SELECT
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';

SELECT
    *
FROM
    salaries
WHERE
    salary > 150000;