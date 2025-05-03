SELECT a.emp_no,

       MIN(salary) AS min_salary FROM (

SELECT

emp_no, salary, ROW_NUMBER() OVER w AS row_num

FROM

salaries

WINDOW w AS (PARTITION BY emp_no ORDER BY salary)) a

GROUP BY emp_no;





SELECT a.emp_no,

       MIN(salary) AS min_salary FROM (

SELECT

emp_no, salary, ROW_NUMBER() OVER (PARTITION BY emp_no ORDER BY salary) AS row_num

FROM

salaries) a

GROUP BY emp_no;






SELECT

    a.emp_no, MIN(salary) AS min_salary

FROM

    (SELECT

        emp_no, salary

    FROM

        salaries) a

GROUP BY emp_no;







SELECT a.emp_no,

a.salary as min_salary FROM (

SELECT

emp_no, salary, ROW_NUMBER() OVER w AS row_num

FROM

salaries

WINDOW w AS (PARTITION BY emp_no ORDER BY salary)) a

WHERE a.row_num=1;







SELECT a.emp_no,

a.salary as min_salary FROM (

SELECT

emp_no, salary, ROW_NUMBER() OVER w AS row_num

FROM

salaries

WINDOW w AS (PARTITION BY emp_no ORDER BY salary)) a

WHERE a.row_num=2;