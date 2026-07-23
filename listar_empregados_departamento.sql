SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
ORDER BY e.employee_id
FETCH FIRST 10 ROWS ONLY;
