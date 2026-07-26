SELECT
    e.first_name,
    e.last_name,
    d.department_name,
    m.first_name AS manager_first_name,
    m.last_name  AS manager_last_name
FROM HR.EMPLOYEES e
JOIN HR.DEPARTMENTS d
    ON e.department_id = d.department_id
LEFT JOIN HR.EMPLOYEES m
    ON d.manager_id = m.employee_id
ORDER BY e.first_name, e.last_name;