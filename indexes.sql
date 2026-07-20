CREATE INDEX idx_student
ON Enrollments(student_id);

CREATE INDEX idx_course
ON Enrollments(course_id);

CREATE INDEX idx_student_course
ON Enrollments(student_id,course_id);
