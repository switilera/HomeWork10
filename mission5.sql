SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Introduction to Programming'
ORDER BY s.last_name;

SELECT c.course_name, COUNT(e.student_id) AS student_count
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

SELECT *
FROM Students
WHERE gpa > 3.5;

SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.enrollment_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

SELECT *
FROM Students
WHERE phone_number IS NULL
ORDER BY enrollment_date;

SELECT *
FROM Courses
WHERE department = 'Computer Science'
ORDER BY credits;

SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(DISTINCT e.course_id) > 1;

SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(DISTINCT c.department) > 1;

SELECT *
FROM Courses
WHERE course_id NOT IN (SELECT course_id FROM Enrollments);

SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.department = 'Computer Science'
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(DISTINCT c.course_id) = (SELECT COUNT(*) FROM Courses WHERE department = 'Computer Science');

SELECT s.first_name, s.last_name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.credits = (SELECT MAX(credits) FROM Courses);

SELECT s.first_name, s.last_name, AVG(e.grade) AS average_grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY average_grade DESC;

SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.enrollment_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

SELECT s.first_name, s.last_name, COUNT(DISTINCT e.course_id) AS course_count
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY course_count DESC;