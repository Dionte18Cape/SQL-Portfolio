-- Number of employees by department id
SELECT department_id, COUNT(*) AS num_employees
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
ORDER BY num_employees DESC;

-- Departments that only have one employee
SELECT department_id, COUNT(*) AS num_employees
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
HAVING COUNT(*) = 1;

-- Most recent hire date by job id
SELECT job_id, MAX(hire_date) AS last_hire_date
FROM employees
GROUP BY job_id
ORDER BY last_hire_date DESC;

-- Average commission by year hired
SELECT TO_CHAR(hire_date, 'YYYY') AS year_hired, 
  ROUND(AVG(commission_pct), 2) AS avg_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY TO_CHAR(hire_date, 'YYYY')
ORDER BY year_hired;

-- Challenge: Average commission percentage by year hired
SELECT TO_CHAR(hire_date, 'YYYY') AS year_hired, 
  ROUND(AVG(commission_pct * 100)) || '%' AS avg_commission
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY TO_CHAR(hire_date, 'YYYY')
ORDER BY year_hired;