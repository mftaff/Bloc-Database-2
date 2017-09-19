CREATE TABLE guest (
    id integer PRIMARY KEY,
    name text
);

CREATE TABLE room (
    id integer PRIMARY KEY,
    room_num integer
);

CREATE TABLE booking (
    id integer PRIMARY KEY,
    check_in date,
    check_out date,
    guest_id integer REFERENCES guest,
    room_id integer REFERENCES room
);
