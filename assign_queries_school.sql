-- all students for a given class
SELECT student.id, student.name, enrolled.class_id FROM student
INNER JOIN enrolled
ON enrolled.student_id = student.id -- AND enrolled.class_id = <some_id>
ORDER BY enrolled.class_id, student.id;

-- count grades per class
SELECT COUNT(grade), grade, class_id FROM enrolled
-- WHERE class_id = <some id>
GROUP BY grade, class_id
ORDER BY class_id, grade;

students per class
SELECT COUNT(student_id) AS student_count, class.title, class_id FROM enrolled
LEFT JOIN class
ON class.id = enrolled.class_id
GROUP BY class.title, class_id
ORDER BY class_id;

-- max students in class
SELECT COUNT(student_id) AS total_students, class.title, class_id FROM enrolled
LEFT JOIN class
ON class.id = enrolled.class_id
GROUP BY class.title, class_id
ORDER BY COUNT(student_id) DESC
LIMIT 1;
