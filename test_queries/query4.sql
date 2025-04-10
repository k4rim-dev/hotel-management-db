SELECT 
    t.task_id,
    t.task_type,
    t.task_date,
    t.stay_duration,
    t.end_date,
    hr.room_type,
    CONCAT(e.surname, ' ', e.name, ' ', e.patronymic) AS full_name
FROM 
    "Task" t
JOIN 
    "Booking" b ON t.booking_id = b.booking_id
JOIN 
    "Hotel_Rooms" hr ON b.room_id = hr.room_id
JOIN 
    "Employee" e ON t.employee_id = e.employee_id
WHERE 
    hr.room_type = 'Апартамент'
    AND e.surname = 'Дорошенко'
    AND e.name = 'Никита'
    AND e.patronymic = 'Сергеевич'
    AND t.task_type IN ('Заселение', 'Выселение')
    AND t.task_date >= '2024-01-01'
ORDER BY 
    t.task_date;
