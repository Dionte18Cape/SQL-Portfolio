SELECT country_name 
FROM countries 
ORDER BY region_id;


SELECT department_id, department_name, manager_id 
FROM departments 
ORDER BY department_name;


SELECT employee_id, start_date, end_date, job_id 
FROM job_history 
ORDER BY start_date DESC, start_date DESC;


SELECT job_title, min_salary, max_salary 
FROM jobs 
ORDER BY min_salary DESC, max_salary DESC;


SELECT street_address, city, state_province, postal_code 
FROM locations 
ORDER BY state_province, city;


SELECT region_id, region_name 
FROM regions 
ORDER BY region_name;



