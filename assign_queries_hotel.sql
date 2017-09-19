-- select guests who havn't booked
SELECT guest.id, guest.name 
FROM guest 
LEFT JOIN booking 
ON guest.id = booking.guest_id 
WHERE booking.guest_id IS NULL;

-- select guests with 2+ rooms
SELECT
    COUNT(booking.check_in) AS rooms,
    booking.check_in,
    guest.name
FROM booking 
LEFT JOIN guest
ON booking.guest_id = guest.id
GROUP BY booking.check_in, guest.name
HAVING COUNT(check_in) > 1;

-- select multiple bookings for a guest
SELECT 
    guest_id, 
    check_in, 
    COUNT(DISTINCT guest_id) AS guest_count
FROM booking
GROUP BY guest_id, check_in
-- HAVING COUNT(guest_id) > 1
;

-- select unique guests per room
SELECT DISTINCT COUNT(guest_id) AS visitors, room.room_num 
FROM booking 
LEFT JOIN room 
ON room.id = booking.room_id
GROUP BY room.room_num
ORDER BY room.room_num;
