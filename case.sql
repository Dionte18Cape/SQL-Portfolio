SELECT d.department_name, COUNT(e.employee_id) AS num_employees,
  CASE
    WHEN COUNT(e.employee_id) >= 10 THEN 'Large'
    WHEN COUNT(e.employee_id) >= 5 THEN 'Medium'
    WHEN COUNT(e.employee_id) >= 1 THEN 'Small'
    ELSE 'Empty'
  END AS department_size
FROM employees e
  RIGHT JOIN departments d ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY num_employees DESC;
