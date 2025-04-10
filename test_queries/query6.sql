SELECT 
    t.task_id,
    t.task_type,
    t.task_date,
    t.stay_duration,
    t.end_date,
    CONCAT(e.surname, ' ', e.name, ' ', e.patronymic) AS full_name,
    task_status
FROM 
    "Task" t
JOIN 
    "Employee" e ON t.employee_id = e.employee_id
WHERE 
    task_status = 'В процессе'
    AND t.task_date = CURRENT_DATE
ORDER BY 
    t.task_date;
