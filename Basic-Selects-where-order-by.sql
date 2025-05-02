SELECT first_name, last_name, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY commission_pct DESC;

SELECT job_title, min_salary, max_salary
FROM jobs
WHERE max_salary >= 10000
ORDER BY max_salary;

