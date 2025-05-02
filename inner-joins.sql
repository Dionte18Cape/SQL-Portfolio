--Employees by department
SELECT d.department_name, e.first_name || ' ' || e.last_name as Employee
FROM employees e
    JOIN departments d ON e.department_id = d.department_id
ORDER BY d.department_name, e.last_name;

--Locations with country name
SELECT a.city, a.state_province, c.country_name
FROM locations a
JOIN countries c ON c.country_id = a.country_id
ORDER BY country_name;


--Locations with country name
SELECT a.city, a.state_province, c.country_name, r.region_name
FROM locations a
JOIN countries c ON c.country_id = c.country_id
JOIN regions r ON r.region_id = c.region_id
ORDER BY country_name;



-- Departments, their managers and number of employees
SELECT m.first_name || ' '  || m.last_name AS manager,
  j.job_title,
  d.department_name,
  COUNT(e.employee_id) AS num_employees
 FROM employees m -- for managers
  JOIN jobs j ON j.job_id = m.job_id
  JOIN departments d ON m.employee_id = d.manager_id
  JOIN employees e ON d.department_id = e.department_id
GROUP BY m.first_name, m.last_name, j.job_title, d.department_name
ORDER BY num_employees DESC;


/* CHALLENGES */
-- Employees and their managers
SELECT m.first_name || ' ' || m.last_name AS manager,
  e.first_name || ' ' || e.last_name AS employee
FROM employees m
  JOIN employees e ON m.employee_id = e.manager_id
ORDER BY m.last_name, m.first_name, e.last_name, e.first_name;

-- Num direct reports by manager
SELECT m.first_name || ' ' || m.last_name AS manager,
  COUNT(e.employee_id) AS num_reports
FROM employees m
  JOIN employees e ON m.employee_id = e.manager_id
GROUP BY m.first_name, m.last_name
ORDER BY num_reports DESC;

