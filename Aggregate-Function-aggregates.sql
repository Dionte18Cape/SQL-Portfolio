




SELECT 
    SUM(max_salary) - SUM(min_salary)AS summax_minus_summin_1,
    ROUND(AVG(max_salary) - AVG(min_salary),2) AS Salary_difference,
    (MAX(min_salary)- MIN(min_salary))AS highmin_minus_lowmin,
    (MAX(max_salary)- MIN(max_salary))AS highmax_minus_lowmax
    FROM jobs;
    

SELECT
    MAX(commission_pct) AS high_commission,
    MIN(commission_pct) AS low_commission,
    ROUND(AVG(commission_pct),2) AS avg_commission
    FROM employees;
    

SELECT
    COUNT(*) AS total_location,
    COUNT(state_province)AS non_null_state_province_locations
    FROM locations;
    
    
SELECT
    ROUND(SUM((current_date - hire_date) / 365.25),2) AS person_years
    FROM employees;
    
    





/* Calculate the following:
  - Sum of all the max salaries minus sum of all the min salaries.
  - Average max salary minus the average min salary. Round this.
  - The difference between the highest and lowest min salaries.
  - The difference between the highest and lowest max salaries.
*/
SELECT SUM(max_salary) - SUM(min_salary) AS summax_minus_summin_1,
  SUM(max_salary - min_salary) AS summax_minus_summin_2,
  ROUND(AVG(max_salary) - AVG(min_salary)) AS avgmax_minus_avgmin_1,
  ROUND(AVG(max_salary - min_salary)) AS avgmax_minus_avgmin_2,
  MAX(min_salary) - MIN(min_salary) AS highmin_minus_lowmin,
  MAX(max_salary) - MIN(max_salary) AS highmax_minus_lowmax
FROM jobs;

-- The highest, lowest and average commission percentages
-- Round the average to two places after the decimal
SELECT MAX(commission_pct) AS high_commission,
  MIN(commission_pct) AS low_commission,
  ROUND(AVG(commission_pct),2) AS avg_commission
FROM employees;

-- How many locations are there? How many have a state_province?
SELECT COUNT(*) AS total_locations, 
  COUNT(STATE_PROVINCE) AS locations_with_state_province
FROM locations;

-- How many locations have no state_province?
SELECT COUNT(*)
FROM locations
WHERE state_province IS NULL;

--Get the total number of years that employees have been working
SELECT ROUND(SUM(CURRENT_DATE - hire_date)/365.25, 2) AS person_years
FROM employees;  
