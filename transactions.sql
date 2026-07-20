BEGIN TRANSACTION;

UPDATE Courses

SET available_seats=available_seats-1

WHERE course_id=1;

INSERT INTO Enrollments

(student_id,course_id,semester)

VALUES

(3,1,'Fall 2026');

COMMIT;
