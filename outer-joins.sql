-- Employees by department
SELECT d.department_name,
  COUNT(e.employee_id) AS num_employees
FROM departments d
  LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY d.department_name;

-- Locations with country name
SELECT l.city, l.state_province,
  c.country_name
FROM locations l
  RIGHT JOIN countries c ON c.country_id = l.country_id
ORDER BY country_name;

-- Locations with country name using COLAESCE
SELECT COALESCE(l.city, 'N/A') AS city,
  COALESCE(l.state_province, 'N/A') AS state_province,
  c.country_name
FROM locations l
  RIGHT JOIN countries c ON c.country_id = l.country_id
ORDER BY country_name;

-- CHALLENGE
-- Managers, their job titles, dept name, and num employees in dept
SELECT m.first_name || ' '  || m.last_name AS manager,
  j.job_title,
  d.department_name,
  COUNT(e.employee_id) AS num_employees
 FROM employees m -- for managers
  JOIN jobs j ON j.job_id = m.job_id
  RIGHT JOIN departments d ON m.employee_id = d.manager_id
  LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY m.first_name, m.last_name, j.job_title, d.department_name
HAVING COUNT(e.employee_id) <= 5
ORDER BY num_employees DESC;