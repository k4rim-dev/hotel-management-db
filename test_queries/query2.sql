SELECT 
    CONCAT(c.surname, ' ', c.name, ' ', c.patronymic) AS full_name,
    r.review_text
FROM 
    "Review" r
JOIN 
    "Booking" b ON r.booking_id = b.booking_id
JOIN 
    "Client" c ON b.client_id = c.client_id
WHERE 
    r.review_date BETWEEN '2024-01-12' AND '2024-06-16'
ORDER BY 
    r.review_date;
