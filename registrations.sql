CREATE TABLE student_courses (
  studentid INTEGER,
  course VARCHAR(20),
  grade FLOAT DEFAULT NULL,
  PRIMARY KEY (studentid, course),
  FOREIGN KEY (studentid) REFERENCES students(id),
  FOREIGN KEY (course) REFERENCES courses(code)
);

INSERT INTO student_courses (studentid, course)
VALUES
    (1, 'INFO330A'), 
    (1, 'INFO448A'), 
    (1, 'INFO314'),
    (3, 'INFO330A'), 
    (3, 'INFO449A'),
    (2, 'BAW010'), 
    (2, 'BAW100A'),
    (4, 'BAW010');