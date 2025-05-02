-- Get commission on 10000 in sales and pct as integer
SELECT first_name, last_name, commission_pct, 
  COALESCE(10000 * commission_pct, 0) AS commission,
  COALESCE(commission_pct * 100, 0) AS comm_percent
FROM employees;

-- Get manager_id in different ways
SELECT employee_id, first_name, last_name,
  COALESCE(manager_id, employee_id) AS boss_coalesce,
  NVL(manager_id, 0) AS boss_nvl,
  NVL2(manager_id, 'Has Boss', 'Has No Boss') AS boss_nvl2
FROM employees;