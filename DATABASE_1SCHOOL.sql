CREATE TABLE Students (
    student_id serial PRIMARY KEY,
    name VARCHAR,
    age INT,
    grade VARCHAR
);

select * from students

drop table students

INSERT INTO Students (name, age, grade) VALUES
('ARPIT', 14, '8th'),
('ROHIT', 15, '9th'),
('AMEY', 14, '8th'),
('SHRIJEET', 15, '9th'),
('ABHISHEK', 13, '7th'),
('AAYUSH', 14, '8th'),
('PIYUSH', 15, '9th'),
('TANUSHRI', 13, '7th'),
('VAISHNAVI', 15, '9th'),
('SUYOG', 14, '8th');


select * from students


CREATE TABLE Courses (
    Course_id SERIAL PRIMARY KEY,
    course_name VARCHAR,
    teacher_name VARCHAR
);

INSERT INTO Courses (course_name, teacher_name) VALUES
('Mathematics', 'Mr. Smith'),
('English', 'Ms. Johnson'),
('Physics', 'Dr. Brown'),
('Chemistry', 'Dr. White'),
('History', 'Mr. Green'),
('Geography', 'Ms. Black'),
('Biology', 'Dr. Grey'),
('Computer Science', 'Mr. Blue'),
('Art', 'Ms. Red'),
('Physical Education', 'Mr. Yellow');

DROP TABLE COURSES

select * from courses


drop table enrollments 

CREATE TABLE Enrollments (
    enrollment_id serial PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-10'),
(2, 2, '2025-01-12'),
(3, 3, '2025-01-15'),
(4, 1, '2025-01-20'),
(5, 2, '2025-01-25'),
(6, 3, '2025-01-28'),
(7, 1, '2025-02-01'),
(8, 2, '2025-02-05'),
(9, 3, '2025-02-10'),
(10, 1, '2025-02-15');

select * from students

select * from courses

select * from enrollments



