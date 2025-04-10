SELECT 
    hr.room_id,
    hr.room_type,
    hr.room_price,
    b.check_in_date,
    b.check_out_date
FROM 
    "Booking" b
JOIN 
    "Hotel_Rooms" hr ON b.room_id = hr.room_id
JOIN 
    "Client" c ON b.client_id = c.client_id
WHERE 
    c.surname = 'Устьянов' 
    AND c.name = 'Андрей' 
    AND c.patronymic = 'Андреевич'
    AND b.check_in_date >= CURRENT_DATE - INTERVAL '3 YEARS'
ORDER BY 
    b.check_in_date DESC;
