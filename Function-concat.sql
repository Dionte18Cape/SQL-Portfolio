SELECT first_name ||''|| last_name || 'was hired on'|| 
TO_CHAR(hire_date, 'DD-MON-YY') AS employee_info
FROM employees;


SELECT first_name ||''||
    last_name || 'was hired on' || hire_date || '.' AS sentence
FROM employees;



  
SELECT CONCAT(
        CONCAT(
          CONCAT(
            CONCAT(
              CONCAT(first_name, ' '), 
                last_name),
              ' was hired on '),
            hire_date),
          '.') AS sentence
FROM employees;



SELECT CONCAT(
    CONCAT(
     CONCAT(first_name, ' '), last_name), 
      CONCAT(' was hired on ', 
      TO_CHAR(hire_date, 'DD-MON-YY'))) AS employee_info
FROM employees;

