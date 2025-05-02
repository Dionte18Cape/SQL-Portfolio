-- How many employees were hired on the same day as each employee?
SELECT first_name, last_name,hire_date,
    (
        SELECT count(employee_id)
        FROM employees e2
        WHERE e2.hire_date = e1.hire_date
    )   AS hired_same_day
FROM employees e1
WHERE (SELECT count(employee_id)
        FROM employees e2
        WHERE e2.hire_date = e1.hire_date) > 1
ORDER BY hired_same_day DESC;







SELECT first_name, last_name, salary, job_id,
    (
        SELECT ROUND(AVG(salary))
        FROM employees
      ) AS avg_salary
FROM employees;


SELECT first_name, last_name, salary, job_id,
    (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
      ) AS avg_salary_job
FROM employees e1;



SELECT first_name, last_name, salary, job_id,
    (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
      ) AS avg_salary_job
FROM employees e1
WHERE salary > (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
    );
    

SELECT first_name, last_name, salary, job_id,
    (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
      ) AS avg_salary_job,
      salary - (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
      ) AS earning_diff
FROM employees e1
WHERE salary > (
        SELECT ROUND(AVG(salary))
        FROM employees e2
        WHERE e1.job_id=e2.job_id
    )
ORDER BY earning_diff DESC;
