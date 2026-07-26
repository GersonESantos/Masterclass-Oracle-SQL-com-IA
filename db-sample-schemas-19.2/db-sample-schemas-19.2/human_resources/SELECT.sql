SELECT 
    e.employee_id, 
    e.first_name, 
    e.last_name, 
    d.department_name
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
FETCH FIRST 10 ROWS ONLY;