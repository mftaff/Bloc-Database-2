CREATE TABLE class (
    id integer PRIMARY KEY,
    title text
);

CREATE TABLE student (
    id integer PRIMARY KEY,
    name text
);

CREATE TABLE enrolled (
    id integer PRIMARY KEY,
    grade text,
    student_id integer REFERENCES student, 
    class_id integer REFERENCES class 
);
