SELECT
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');


SELECT
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');


SELECT
    *
FROM
    employees
WHERE
    first_name LIKE('Mark%');

 
SELECT
    *
FROM
   employees
WHERE
    hire_date LIKE ('%2000%');

 

SELECT
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');