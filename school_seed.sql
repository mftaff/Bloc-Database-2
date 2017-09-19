DELETE FROM enrolled;
DELETE FROM class;
DELETE FROM student;

INSERT INTO class(id, title) VALUES
(10, 'math'),
(20, 'biology'),
(30, 'psychology'),
(40, 'literature'),
(50, 'history');

INSERT INTO student(id, name) VALUES
(1, 'adam'),
(2, 'aron'),
(3, 'adele'),
(4, 'adrian'),
(5, 'arnold'),
(6, 'anna'),
(7, 'alice');

INSERT INTO enrolled(id, grade, student_id, class_id) VALUES
(100, 'A', 1, 10),
(101, 'A', 1, 20),
(102, 'B', 1, 50),
(103, 'A', 1, 40),
(104, 'B', 2, 20),
(105, 'C', 2, 30),
(106, 'B', 2, 40),
(107, 'A', 2, 50),
(108, 'B', 3, 10),
(109, 'B', 3, 30),
(110, 'B', 3, 40),
(111, 'B', 3, 50),
(112, 'A', 4, 20),
(113, 'D', 4, 40),
(114, 'D', 4, 50),
(115, 'F', 4, 30),
(116, 'C', 5, 10),
(117, 'B', 5, 20),
(118, 'B', 5, 30),
(119, 'D', 5, 40),
(120, 'A', 6, 20),
(121, 'A', 6, 30),
(122, 'C', 6, 40),
(123, 'D', 6, 50),
(124, 'A', 7, 50),
(125, 'A', 7, 40),
(126, 'A', 7, 30),
(127, 'A', 7, 20);
