SELECT 
    clients.first_name,
    clients.last_name,
    
    SUM(services.price) AS services_charges,
    SUM(bookings.total_price) AS room_charges,
    SUM(services.price)  + SUM(bookings.total_price) 
    AS  total_charges,

    CASE 
        WHEN SUM(services.price) + SUM(bookings.total_price) > 5000 THEN 'Above 5000'
        ELSE 'Below 5000'
    END AS total_charges_comment

FROM 
    clients
LEFT JOIN 
    bookings ON clients.id = bookings.client_id
LEFT JOIN
    client_services ON clients.id = client_services.client_id
LEFT JOIN
    services ON client_services.service_id = services.id
GROUP BY
    clients.first_name,
    clients.last_name,
    bookings.room_id