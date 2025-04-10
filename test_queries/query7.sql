SELECT 
    COUNT(*) AS employee_count
FROM 
    "Employee"
WHERE 
    position = 'Горничная'
    AND hire_date BETWEEN '2024-01-24' AND '2024-10-17';
