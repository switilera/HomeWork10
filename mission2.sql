INSERT INTO Students (first_name, last_name, date_of_birth, email, enrollment_date,phone_number) 
VALUES 
('Valeriya', 'Sergeevna', '1999-04-01', 'lera72tymen@gmail.com', '2022-09-01','89324788889'),
('Alex', 'Romanovich', '1997-03-15', 'alex25@gmail.com', '2022-09-01','89324788881'),
('Nicholas', 'Sergeevich', '1989-01-04', 'Nicholas.Sergeevich@gmail.com', '2022-09-01','89324788882'),
('Mary', 'Brown', '2002-11-05', 'mary.brown@gmail.com', '2022-09-01','89324788884'),
('David', 'Wilson', '2001-05-25', 'david.wilson@gmail.com', '2022-09-01',NULL);

INSERT INTO Courses (course_name, description, credits, department) 
VALUES 
('Introduction to Programming', 'Basic programming concepts', 4, 'Computer Science'),
('Calculus I', 'Fundamental calculus concepts', 4, 'Mathematics'),
('History of Art', 'Art history from ancient times to present', 3, 'Art');

INSERT INTO Enrollments (student_id, course_id, enrollment_date, grade) 
VALUES 
(1, 1, '2022-09-01', 3.5),
(2, 1, '2022-09-01', 4.0),
(3, 2, '2022-09-01', 3.0),
(4, 1, '2022-09-01', NULL),
(5, 3, '2022-09-01', 4.5);