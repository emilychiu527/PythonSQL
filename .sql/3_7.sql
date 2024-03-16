SELECT *FROM student
DROP TABLE student

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1,'小白','國文')
RETURNING *;

INSERT INTO student VALUES(1,'小白','國文')
RETURNING *;

INSERT INTO student(name,major) VALUES ('小黑','地理')
RETURNING *;

INSERT INTO student(name,major) VALUES ('小白','國文')
RETURNING *;

INSERT INTO student(name,major) VALUES ('小藍','日文')
RETURNING *;