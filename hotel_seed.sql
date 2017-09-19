DELETE FROM booking;
DELETE FROM guest;
DELETE FROM room;

INSERT INTO guest(id, name) VALUES 
(1, 'john elwo'),
(2, 'jane oolwoo'),
(3, 'jim bran'),
(4, 'jill broon');

INSERT INTO room(id, room_num) VALUES 
(100, 100),
(101, 101),
(102, 102);

INSERT INTO booking(id, check_in, check_out, guest_id, room_id) VALUES 
(1, '2017-01-01', '2017-03-12', 2, 100),
(2, '2017-01-05', '2017-01-06', 3, 101),
(3, '2017-02-27', '2017-03-01', 1, 101),
(4, '2017-03-22', '2017-03-26', 1, 100),
(5, '2017-03-22', '2017-03-26', 1, 102);