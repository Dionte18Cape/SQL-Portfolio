-- First five countries by country name
SELECT country_id, country_name, region_id
FROM countries
ORDER BY country_name
FETCH FIRST 5 ROWS ONLY;

-- Second five countries by country name
SELECT country_id, country_name, region_id
FROM countries
ORDER BY country_name
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

-- Highest paid employee
SELECT first_name, last_name, salary, job_id
FROM employees
ORDER BY salary DESC
FETCH FIRST 1 ROW ONLY;

-- Lowest paid Shipping Clerk(s)
SELECT first_name, last_name, salary
FROM employees
WHERE job_id = 'SH_CLERK'
ORDER BY salary ASC
FETCH FIRST 1 ROW WITH TIES;

-- Highest paid 50% of jobs (by min_salary)
SELECT job_id, job_title, min_salary, max_salary
FROM jobs
ORDER BY min_salary DESC
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Lowest paid 50% of jobs (by min_salary)
SELECT job_id, job_title, min_salary, max_salary
FROM jobs
ORDER BY min_salary
FETCH FIRST 50 PERCENT ROWS ONLY;
