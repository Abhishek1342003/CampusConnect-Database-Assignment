PRAGMA foreign_keys = ON;

CREATE TABLE Students(

student_id INTEGER PRIMARY KEY,

name TEXT NOT NULL,

email TEXT UNIQUE,

department TEXT NOT NULL

);

CREATE TABLE Courses(

course_id INTEGER PRIMARY KEY,

course_name TEXT NOT NULL,

credits INTEGER DEFAULT 3,

available_seats INTEGER NOT NULL

);

CREATE TABLE Enrollments(

enrollment_id INTEGER PRIMARY KEY,

student_id INTEGER NOT NULL,

course_id INTEGER NOT NULL,

semester TEXT,

FOREIGN KEY(student_id)
REFERENCES Students(student_id),

FOREIGN KEY(course_id)
REFERENCES Courses(course_id)

);

CREATE TABLE Instructors(

instructor_id INTEGER PRIMARY KEY,

name TEXT,

department TEXT

);
