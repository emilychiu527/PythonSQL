DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

SELECT *
FROM student;

SELECT name 
From student;

SELECT name,major
From stuendt;

SELECT name AS 姓名,major AS 主修

SELECT *FROM student 
WHERE major=('英語')
ORDER BY score DESC

SELECT *FROM student
WHERE major=('英語')
AND score < 80

SELECT *FROM student
WHERE major=('英語')
OR score > 60

SELECT *FROM student
WHERE major IN('英語','生物','歷史')

SELECT *FROM student
WHERE score >= 80 AND score <=100

SELECT *FROM student
WHERE score BETWEEN 80 AND 100

SELECT *FROM student
WHERE name LIKE '小%'

SELECT *FROM student
WHERE name LIKE '%黃%'



/*主修是英語的,分數小於80分/

/*主修是英語的,或者分數大於60/
/*主修是英語,或者主修是生物,或者歷史(有兩種方式)/
/*分數大於等於80，小於等於100分(有兩種方式)/
/*取第一個姓氏是小的/
/*其中字有黃的/

/*把3號主修變生物/
/*刪掉小黃主修生物/

