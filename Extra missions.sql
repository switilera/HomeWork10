CREATE VIEW StudentEnrollments AS
SELECT s.first_name, s.last_name, c.course_name, e.enrollment_date, e.grade
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

DELIMITER //
CREATE PROCEDURE AddStudentAndEnroll(
  IN new_first_name VARCHAR(255),
  IN new_last_name VARCHAR(255),
  IN new_date_of_birth DATE,
  IN new_email VARCHAR(255),
  IN new_enrollment_date DATE,
  IN course_id INT
)
BEGIN
  INSERT INTO Students (first_name, last_name, date_of_birth, email, enrollment_date)
  VALUES (new_first_name, new_last_name, new_date_of_birth, new_email, new_enrollment_date);

  INSERT INTO Enrollments (student_id, course_id, enrollment_date)
  VALUES (LAST_INSERT_ID(), course_id, new_enrollment_date);
END //
DELIMITER ;
