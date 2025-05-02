CREATE VIEW employee_info_view AS
SELECT e.employee_id, e.first_name, e.last_name,
	e.salary, e.commission_pct, e.manager_id,
  m.first_name AS mgr_first_name, m.last_name AS mgr_last_name,
	j.job_id, j.job_title,
	d.department_id, d.department_name,
	l.location_id, l.city, l.state_province,
	c.country_id, c.country_name,
	r.region_name
FROM employees e
  JOIN employees m ON m.employee_id = e.manager_id
	JOIN departments d ON e.department_id = d.department_id
	JOIN jobs j ON j.job_id = e.job_id
	JOIN locations l ON d.location_id = l.location_id
	JOIN countries c ON l.country_id = c.country_id
	JOIN regions r ON c.region_id = r.region_id;

SELECT first_name, last_name,	salary, commission_pct,
  mgr_first_name, mgr_last_name,
	city, state_province, country_name
FROM employee_info_view
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC;