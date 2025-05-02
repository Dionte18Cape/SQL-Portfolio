-- Names of all employees who report to Gerald Cambrault
SELECT first_name, last_name
FROM employees
WHERE Manager_id = (
            SELECT employee_id
            FROM employees
            WHERE first_name = 'Gerald' AND last_name = 'Cambrault'
        );
        

-- Department not in the United States (knowing country_id)
SELECT department_name
FROM departments
WHERE location_id NOT IN
        (
            SELECT location_id
            FROM locations
            WHERE country_id = 'US'
        );
        
        
-- Departments not in the United States (w/o knpwing country_id
SELECT department_name
FROM departments
WHERE location_id NOT IN
    (
    SELECT location_id
    FROM locations
    WHERE country_id =
        (
        SELECT Country_id
        FROM countries
        WHERE country_name = 'United States of America'
        )
    );
    
        












SELECT job_id
FROM employees
WHERE first_name = 'Steven' AND last_name = 'King';

SELECT job_title
FROM jobs
WHERE job_id = 'AD_PRES';



SELECT job_title
FROM jobs
WHERE job_id = (
            SELECT job_id
            FROM employees
            WHERE first_name = 'Steven' AND last_name = 'King'
        );
        

SELECT job_title
FROM jobs
WHERE job_id IN (
            SELECT job_id
            FROM employees
            WHERE  last_name = 'King'
        );
        
        
        
SELECT job_title, Job_id, min_salary, max_salary
FROM jobs
WHERE job_id IN (
            SELECT job_id
            FROM employees
            WHERE  last_name = 'King'
        );
        
        
        