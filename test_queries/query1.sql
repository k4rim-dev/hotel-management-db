SELECT 
    CONCAT(e.surname, ' ', e.name, ' ', e.patronymic) AS full_name,
    e.hire_date,
    e.termination_date,
    (e.termination_date - e.hire_date) AS worked_days
FROM 
    "Employee" e
WHERE 
    e.position = 'Официант'
    AND e.termination_date IS NOT NULL
    AND e.termination_date >= CURRENT_DATE - INTERVAL '2 MONTH'
ORDER BY 
    e.termination_date DESC;
