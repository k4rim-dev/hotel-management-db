SELECT 
    hr.room_id,
    hr.room_type,
    hr.room_price,
    b.check_in_date,
    b.check_out_date,
    CONCAT(c.surname, ' ', c.name, ' ', c.patronymic) AS full_name,
    b.booking_status
FROM 
    "Hotel_Rooms" hr
JOIN 
    "Booking" b ON hr.room_id = b.room_id
JOIN 
    "Client" c ON b.client_id = c.client_id
WHERE 
    hr.room_type = 'Люкс'
    AND b.check_in_date <= CURRENT_DATE 
    AND b.check_out_date >= CURRENT_DATE
    AND b.booking_status = 'Подтверждено'
ORDER BY 
    b.check_in_date;
